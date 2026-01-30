.class Lcom/google/firebase/messaging/SyncTask;
.super Ljava/lang/Object;
.source "SyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/SyncTask$ConnectivityChangeReceiver;
    }
.end annotation


# instance fields
.field private final firebaseMessaging:Lcom/google/firebase/messaging/FirebaseMessaging;

.field private final nextDelaySeconds:J

.field processorExecutor:Ljava/util/concurrent/ExecutorService;

.field private final syncWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;J)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    const-string v0, "firebase-iid-executor"

    invoke-direct {v7, v0}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x1e

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v8, p0, Lcom/google/firebase/messaging/SyncTask;->processorExecutor:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/google/firebase/messaging/SyncTask;->firebaseMessaging:Lcom/google/firebase/messaging/FirebaseMessaging;

    iput-wide p2, p0, Lcom/google/firebase/messaging/SyncTask;->nextDelaySeconds:J

    invoke-virtual {p0}, Lcom/google/firebase/messaging/SyncTask;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 p2, 0x1

    const-string p3, "fiid-sync"

    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/SyncTask;->syncWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/messaging/SyncTask;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .registers 1

    iget-object p0, p0, Lcom/google/firebase/messaging/SyncTask;->firebaseMessaging:Lcom/google/firebase/messaging/FirebaseMessaging;

    return-object p0
.end method

.method static isDebugLogEnabled()Z
    .registers 4

    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_18

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ne v2, v3, :cond_16

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    :goto_19
    return v0
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/messaging/SyncTask;->firebaseMessaging:Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method isDeviceConnected()Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/firebase/messaging/SyncTask;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method maybeRefreshToken()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/google/firebase/messaging/SyncTask;->firebaseMessaging:Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-virtual {v2}, Lcom/google/firebase/messaging/FirebaseMessaging;->blockingGetToken()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_11

    const-string v2, "Token retrieval failed: null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_11
    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, "Token successfully retrieved"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1d} :catch_25
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_1d} :catch_1f

    :cond_1d
    const/4 v0, 0x1

    return v0

    :catch_1f
    const-string v2, "Token retrieval failed with SecurityException. Will retry token retrieval"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_25
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/messaging/GmsRpc;->isErrorMessageForRetryableError(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4b

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Token retrieval failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Will retry token retrieval"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4b
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_57

    const-string v2, "Token retrieval failed without exception message. Will retry token retrieval"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_57
    throw v2
.end method

.method public run()V
    .registers 6

    const-string v0, "Topic sync or token retrieval failed on hard failure exceptions: "

    invoke-static {}, Lcom/google/firebase/messaging/ServiceStarter;->getInstance()Lcom/google/firebase/messaging/ServiceStarter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/messaging/SyncTask;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/messaging/ServiceStarter;->hasWakeLockPermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/google/firebase/messaging/SyncTask;->syncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_15
    const/4 v1, 0x0

    :try_start_16
    iget-object v2, p0, Lcom/google/firebase/messaging/SyncTask;->firebaseMessaging:Lcom/google/firebase/messaging/FirebaseMessaging;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/firebase/messaging/FirebaseMessaging;->setSyncScheduledOrRunning(Z)V

    iget-object v2, p0, Lcom/google/firebase/messaging/SyncTask;->firebaseMessaging:Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-virtual {v2}, Lcom/google/firebase/messaging/FirebaseMessaging;->isGmsCorePresent()Z

    move-result v2

    if-nez v2, :cond_3d

    iget-object v2, p0, Lcom/google/firebase/messaging/SyncTask;->firebaseMessaging:Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-virtual {v2, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->setSyncScheduledOrRunning(Z)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_29} :catch_96
    .catchall {:try_start_16 .. :try_end_29} :catchall_94

    invoke-static {}, Lcom/google/firebase/messaging/ServiceStarter;->getInstance()Lcom/google/firebase/messaging/ServiceStarter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/messaging/SyncTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/ServiceStarter;->hasWakeLockPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/firebase/messaging/SyncTask;->syncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3c
    return-void

    :cond_3d
    :try_start_3d
    invoke-static {}, Lcom/google/firebase/messaging/ServiceStarter;->getInstance()Lcom/google/firebase/messaging/ServiceStarter;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/firebase/messaging/SyncTask;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/messaging/ServiceStarter;->hasAccessNetworkStatePermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-virtual {p0}, Lcom/google/firebase/messaging/SyncTask;->isDeviceConnected()Z

    move-result v2

    if-nez v2, :cond_6d

    new-instance v2, Lcom/google/firebase/messaging/SyncTask$ConnectivityChangeReceiver;

    invoke-direct {v2, p0}, Lcom/google/firebase/messaging/SyncTask$ConnectivityChangeReceiver;-><init>(Lcom/google/firebase/messaging/SyncTask;)V

    invoke-virtual {v2}, Lcom/google/firebase/messaging/SyncTask$ConnectivityChangeReceiver;->registerReceiver()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_59} :catch_96
    .catchall {:try_start_3d .. :try_end_59} :catchall_94

    invoke-static {}, Lcom/google/firebase/messaging/ServiceStarter;->getInstance()Lcom/google/firebase/messaging/ServiceStarter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/messaging/SyncTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/ServiceStarter;->hasWakeLockPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/google/firebase/messaging/SyncTask;->syncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_6c
    return-void

    :cond_6d
    :try_start_6d
    invoke-virtual {p0}, Lcom/google/firebase/messaging/SyncTask;->maybeRefreshToken()Z

    move-result v2

    if-eqz v2, :cond_79

    iget-object v2, p0, Lcom/google/firebase/messaging/SyncTask;->firebaseMessaging:Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-virtual {v2, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->setSyncScheduledOrRunning(Z)V

    goto :goto_80

    :cond_79
    iget-object v2, p0, Lcom/google/firebase/messaging/SyncTask;->firebaseMessaging:Lcom/google/firebase/messaging/FirebaseMessaging;

    iget-wide v3, p0, Lcom/google/firebase/messaging/SyncTask;->nextDelaySeconds:J

    invoke-virtual {v2, v3, v4}, Lcom/google/firebase/messaging/FirebaseMessaging;->syncWithDelaySecondsInternal(J)V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_80} :catch_96
    .catchall {:try_start_6d .. :try_end_80} :catchall_94

    :goto_80
    invoke-static {}, Lcom/google/firebase/messaging/ServiceStarter;->getInstance()Lcom/google/firebase/messaging/ServiceStarter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/messaging/SyncTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/ServiceStarter;->hasWakeLockPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c5

    :goto_8e
    iget-object v0, p0, Lcom/google/firebase/messaging/SyncTask;->syncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_c5

    :catchall_94
    move-exception v0

    goto :goto_c6

    :catch_96
    move-exception v2

    :try_start_97
    const-string v3, "FirebaseMessaging"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Won\'t retry the operation."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/firebase/messaging/SyncTask;->firebaseMessaging:Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->setSyncScheduledOrRunning(Z)V
    :try_end_b6
    .catchall {:try_start_97 .. :try_end_b6} :catchall_94

    invoke-static {}, Lcom/google/firebase/messaging/ServiceStarter;->getInstance()Lcom/google/firebase/messaging/ServiceStarter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/messaging/SyncTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/ServiceStarter;->hasWakeLockPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c5

    goto :goto_8e

    :cond_c5
    :goto_c5
    return-void

    :goto_c6
    invoke-static {}, Lcom/google/firebase/messaging/ServiceStarter;->getInstance()Lcom/google/firebase/messaging/ServiceStarter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/messaging/SyncTask;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/messaging/ServiceStarter;->hasWakeLockPermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d9

    iget-object v1, p0, Lcom/google/firebase/messaging/SyncTask;->syncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_d9
    throw v0
.end method
