.class public abstract Lcom/google/firebase/messaging/EnhancedIntentService;
.super Landroid/app/Service;
.source "EnhancedIntentService.java"


# static fields
.field static final MESSAGE_TIMEOUT_S:J = 0x14L

.field private static final TAG:Ljava/lang/String; = "EnhancedIntentService"


# instance fields
.field private binder:Landroid/os/Binder;

.field final executor:Ljava/util/concurrent/ExecutorService;

.field private lastStartId:I

.field private final lock:Ljava/lang/Object;

.field private runningTasks:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    invoke-static {}, Lcom/google/firebase/messaging/FcmExecutors;->newIntentHandleExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->runningTasks:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/messaging/EnhancedIntentService;Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/EnhancedIntentService;->processIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method private finishTask(Landroid/content/Intent;)V
    .registers 3

    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/google/firebase/messaging/WakeLockHolder;->completeWakefulIntent(Landroid/content/Intent;)V

    :cond_5
    iget-object p1, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->lock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_8
    iget v0, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->runningTasks:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->runningTasks:I

    if-nez v0, :cond_15

    iget v0, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->lastStartId:I

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/EnhancedIntentService;->stopSelfResultHook(I)Z

    :cond_15
    monitor-exit p1

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw v0
.end method

.method private processIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/EnhancedIntentService;->handleIntentOnMainThread(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_c
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/firebase/messaging/EnhancedIntentService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/firebase/messaging/EnhancedIntentService$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/messaging/EnhancedIntentService;Landroid/content/Intent;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected getStartCommandIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2

    return-object p1
.end method

.method public abstract handleIntent(Landroid/content/Intent;)V
.end method

.method public handleIntentOnMainThread(Landroid/content/Intent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onStartCommand$1$com-google-firebase-messaging-EnhancedIntentService(Landroid/content/Intent;Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/EnhancedIntentService;->finishTask(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$processIntent$0$com-google-firebase-messaging-EnhancedIntentService(Landroid/content/Intent;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/EnhancedIntentService;->handleIntent(Landroid/content/Intent;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_8

    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void

    :catchall_8
    move-exception p1

    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    throw p1
.end method

.method public final declared-synchronized onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string p1, "EnhancedIntentService"

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "EnhancedIntentService"

    const-string v0, "Service received bind request"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object p1, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->binder:Landroid/os/Binder;

    if-nez p1, :cond_21

    new-instance p1, Lcom/google/firebase/messaging/WithinAppServiceBinder;

    new-instance v0, Lcom/google/firebase/messaging/EnhancedIntentService$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/messaging/EnhancedIntentService$1;-><init>(Lcom/google/firebase/messaging/EnhancedIntentService;)V

    invoke-direct {p1, v0}, Lcom/google/firebase/messaging/WithinAppServiceBinder;-><init>(Lcom/google/firebase/messaging/WithinAppServiceBinder$IntentHandler;)V

    iput-object p1, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->binder:Landroid/os/Binder;

    :cond_21
    iget-object p1, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->binder:Landroid/os/Binder;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    monitor-exit p0

    return-object p1

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    iget-object p2, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->lock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_3
    iput p3, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->lastStartId:I

    iget p3, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->runningTasks:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->runningTasks:I

    monitor-exit p2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_34

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/EnhancedIntentService;->getStartCommandIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    const/4 p3, 0x2

    if-nez p2, :cond_17

    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/EnhancedIntentService;->finishTask(Landroid/content/Intent;)V

    return p3

    :cond_17
    invoke-direct {p0, p2}, Lcom/google/firebase/messaging/EnhancedIntentService;->processIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/EnhancedIntentService;->finishTask(Landroid/content/Intent;)V

    return p3

    :cond_25
    new-instance p3, Landroidx/privacysandbox/ads/adservices/adid/AdIdManager$Api33Ext4Impl$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Landroidx/privacysandbox/ads/adservices/adid/AdIdManager$Api33Ext4Impl$$ExternalSyntheticLambda0;-><init>()V

    new-instance v0, Lcom/google/firebase/messaging/EnhancedIntentService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/messaging/EnhancedIntentService$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/messaging/EnhancedIntentService;Landroid/content/Intent;)V

    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    const/4 p1, 0x3

    return p1

    :catchall_34
    move-exception p1

    :try_start_35
    monitor-exit p2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p1
.end method

.method stopSelfResultHook(I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/EnhancedIntentService;->stopSelfResult(I)Z

    move-result p1

    return p1
.end method
