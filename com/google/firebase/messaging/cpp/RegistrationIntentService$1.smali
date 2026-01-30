.class Lcom/google/firebase/messaging/cpp/RegistrationIntentService$1;
.super Ljava/lang/Object;
.source "RegistrationIntentService.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/messaging/cpp/RegistrationIntentService;->onHandleWork(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/messaging/cpp/RegistrationIntentService;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/firebase/messaging/cpp/RegistrationIntentService;Landroid/content/Context;)V
    .registers 3

    .line 43
    iput-object p1, p0, Lcom/google/firebase/messaging/cpp/RegistrationIntentService$1;->this$0:Lcom/google/firebase/messaging/cpp/RegistrationIntentService;

    iput-object p2, p0, Lcom/google/firebase/messaging/cpp/RegistrationIntentService$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const-string v1, "FirebaseRegService"

    if-nez v0, :cond_12

    .line 47
    const-string v0, "Fetching FCM registration token failed"

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 52
    :cond_12
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x1

    .line 54
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const-string v2, "onHandleWork token=%s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/firebase/messaging/cpp/DebugLogging;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2e

    .line 56
    iget-object v0, p0, Lcom/google/firebase/messaging/cpp/RegistrationIntentService$1;->val$context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/firebase/messaging/cpp/RegistrationIntentService;->writeTokenToInternalStorage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2e
    return-void
.end method
