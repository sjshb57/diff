.class Lcom/google/firebase/messaging/FcmLifecycleCallbacks;
.super Ljava/lang/Object;
.source "FcmLifecycleCallbacks.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final RECENTLY_LOGGED_MESSAGE_IDS_MAX_SIZE:I = 0xa


# instance fields
.field private final recentlyLoggedMessageIds:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/google/firebase/messaging/FcmLifecycleCallbacks;->recentlyLoggedMessageIds:Ljava/util/Queue;

    return-void
.end method

.method private logNotificationOpen(Landroid/content/Intent;)V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_30

    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->getMessageId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, p0, Lcom/google/firebase/messaging/FcmLifecycleCallbacks;->recentlyLoggedMessageIds:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    return-void

    :cond_1a
    iget-object v2, p0, Lcom/google/firebase/messaging/FcmLifecycleCallbacks;->recentlyLoggedMessageIds:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_1f
    const-string v1, "gcm.n.analytics_data"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_25} :catch_26

    goto :goto_30

    :catch_26
    move-exception p1

    const/4 v1, 0x0

    sget-object v1, Landroidx/privacysandbox/ads/adservices/adselection/oJ/LFBAEOAct;->BVaE:Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v2, Lcom/saucesdk/android/getgaid/shYz/gnCvd;->zzHfDiXhHIQJd:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_30
    :goto_30
    invoke-static {v0}, Lcom/google/firebase/messaging/MessagingAnalytics;->shouldUploadScionMetrics(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_39

    invoke-static {v0}, Lcom/google/firebase/messaging/MessagingAnalytics;->logNotificationOpen(Landroid/os/Bundle;)V

    :cond_39
    return-void
.end method


# virtual methods
.method synthetic lambda$onActivityCreated$0$com-google-firebase-messaging-FcmLifecycleCallbacks(Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/FcmLifecycleCallbacks;->logNotificationOpen(Landroid/content/Intent;)V

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x19

    if-gt p2, v0, :cond_1f

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/google/firebase/messaging/FcmLifecycleCallbacks$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/messaging/FcmLifecycleCallbacks$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/messaging/FcmLifecycleCallbacks;Landroid/content/Intent;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_22

    :cond_1f
    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/FcmLifecycleCallbacks;->logNotificationOpen(Landroid/content/Intent;)V

    :goto_22
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
