.class Lcom/google/games/bridge/GenericResolutionUiRequest;
.super Ljava/lang/Object;
.source "GenericResolutionUiRequest.java"

# interfaces
.implements Lcom/google/games/bridge/HelperFragment$Request;


# static fields
.field static final SELECT_UI_STATUS_INTERNAL_ERROR:I = -0x2

.field static final SELECT_UI_STATUS_RESULT_OK:I = 0x1

.field static final SELECT_UI_STATUS_USER_CLOSED_UI:I = -0x6

.field private static final TAG:Ljava/lang/String; = "FriendsSharingConsent"


# instance fields
.field private final pendingIntent:Landroid/app/PendingIntent;

.field private final resultTaskSource:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/PendingIntent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object v0, p0, Lcom/google/games/bridge/GenericResolutionUiRequest;->resultTaskSource:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p1, p0, Lcom/google/games/bridge/GenericResolutionUiRequest;->pendingIntent:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method getTask()Lcom/google/android/gms/tasks/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/games/bridge/GenericResolutionUiRequest;->resultTaskSource:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    const/16 p3, 0x2333

    if-ne p1, p3, :cond_3b

    const/4 p1, -0x1

    if-ne p2, p1, :cond_10

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/games/bridge/GenericResolutionUiRequest;->setResult(Ljava/lang/Integer;)V

    goto :goto_3b

    :cond_10
    if-nez p2, :cond_1b

    const/4 p1, -0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/games/bridge/GenericResolutionUiRequest;->setResult(Ljava/lang/Integer;)V

    goto :goto_3b

    :cond_1b
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p3, 0x30

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "onActivityResult unknown resultCode: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FriendsSharingConsent"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/games/bridge/GenericResolutionUiRequest;->setResult(Ljava/lang/Integer;)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public process(Lcom/google/games/bridge/HelperFragment;)V
    .registers 5

    invoke-virtual {p1}, Lcom/google/games/bridge/HelperFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/games/bridge/GenericResolutionActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "RequestFriendsAccessPermissionPendingIntent"

    iget-object v2, p0, Lcom/google/games/bridge/GenericResolutionUiRequest;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v0, 0x2333

    invoke-virtual {p1, v1, v0}, Lcom/google/games/bridge/HelperFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method setFailure(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Lcom/google/games/bridge/GenericResolutionUiRequest;->resultTaskSource:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    invoke-static {p0}, Lcom/google/games/bridge/HelperFragment;->finishRequest(Lcom/google/games/bridge/HelperFragment$Request;)V

    return-void
.end method

.method setResult(Ljava/lang/Integer;)V
    .registers 3

    iget-object v0, p0, Lcom/google/games/bridge/GenericResolutionUiRequest;->resultTaskSource:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/google/games/bridge/HelperFragment;->finishRequest(Lcom/google/games/bridge/HelperFragment$Request;)V

    return-void
.end method
