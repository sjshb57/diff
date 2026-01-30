.class Lcom/google/games/bridge/SelectSnapshotUiRequest;
.super Ljava/lang/Object;
.source "SelectSnapshotUiRequest.java"

# interfaces
.implements Lcom/google/games/bridge/HelperFragment$Request;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/games/bridge/SelectSnapshotUiRequest$Result;
    }
.end annotation


# static fields
.field static final SELECT_UI_STATUS_AUTHENTICATION_ERROR:I = -0x3

.field static final SELECT_UI_STATUS_GAME_SELECTED:I = 0x1

.field static final SELECT_UI_STATUS_INTERNAL_ERROR:I = -0x1

.field static final SELECT_UI_STATUS_UI_BUSY:I = -0x5

.field static final SELECT_UI_STATUS_USER_CLOSED_UI:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SelectSnapshotUiRequest"


# instance fields
.field private allowAddButton:Z

.field private allowDelete:Z

.field private maxSnapshots:I

.field private final resultTaskSource:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/games/bridge/SelectSnapshotUiRequest$Result;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZZI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object v0, p0, Lcom/google/games/bridge/SelectSnapshotUiRequest;->resultTaskSource:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p1, p0, Lcom/google/games/bridge/SelectSnapshotUiRequest;->title:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/games/bridge/SelectSnapshotUiRequest;->allowAddButton:Z

    iput-boolean p3, p0, Lcom/google/games/bridge/SelectSnapshotUiRequest;->allowDelete:Z

    iput p4, p0, Lcom/google/games/bridge/SelectSnapshotUiRequest;->maxSnapshots:I

    return-void
.end method


# virtual methods
.method getTask()Lcom/google/android/gms/tasks/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/games/bridge/SelectSnapshotUiRequest$Result;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/games/bridge/SelectSnapshotUiRequest;->resultTaskSource:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    const/16 v0, 0x232c

    if-ne p1, v0, :cond_3f

    const/4 p1, -0x1

    if-ne p2, p1, :cond_14

    const-string p1, "com.google.android.gms.games.SNAPSHOT_METADATA"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/google/games/bridge/SelectSnapshotUiRequest;->setResult(ILcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    goto :goto_3f

    :cond_14
    if-nez p2, :cond_1b

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/games/bridge/SelectSnapshotUiRequest;->setResult(I)V

    goto :goto_3f

    :cond_1b
    const/16 p3, 0x2711

    if-ne p2, p3, :cond_24

    const/4 p1, -0x3

    invoke-virtual {p0, p1}, Lcom/google/games/bridge/SelectSnapshotUiRequest;->setResult(I)V

    goto :goto_3f

    :cond_24
    new-instance p3, Ljava/lang/StringBuilder;

    const/16 v0, 0x30

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "onActivityResult unknown resultCode: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SelectSnapshotUiRequest"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/google/games/bridge/SelectSnapshotUiRequest;->setResult(I)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method public process(Lcom/google/games/bridge/HelperFragment;)V
    .registers 8

    invoke-virtual {p1}, Lcom/google/games/bridge/HelperFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/PlayGames;->getSnapshotsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/SnapshotsClient;

    move-result-object v1

    iget-object v2, p0, Lcom/google/games/bridge/SelectSnapshotUiRequest;->title:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/games/bridge/SelectSnapshotUiRequest;->allowAddButton:Z

    iget-boolean v4, p0, Lcom/google/games/bridge/SelectSnapshotUiRequest;->allowDelete:Z

    iget v5, p0, Lcom/google/games/bridge/SelectSnapshotUiRequest;->maxSnapshots:I

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/google/android/gms/games/SnapshotsClient;->getSelectSnapshotIntent(Ljava/lang/String;ZZI)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/google/games/bridge/SelectSnapshotUiRequest$2;

    invoke-direct {v2, p0, p1}, Lcom/google/games/bridge/SelectSnapshotUiRequest$2;-><init>(Lcom/google/games/bridge/SelectSnapshotUiRequest;Lcom/google/games/bridge/HelperFragment;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v1, Lcom/google/games/bridge/SelectSnapshotUiRequest$1;

    invoke-direct {v1, p0}, Lcom/google/games/bridge/SelectSnapshotUiRequest$1;-><init>(Lcom/google/games/bridge/SelectSnapshotUiRequest;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method setFailure(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Lcom/google/games/bridge/SelectSnapshotUiRequest;->resultTaskSource:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    invoke-static {p0}, Lcom/google/games/bridge/HelperFragment;->finishRequest(Lcom/google/games/bridge/HelperFragment$Request;)V

    return-void
.end method

.method setResult(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/games/bridge/SelectSnapshotUiRequest;->setResult(ILcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    return-void
.end method

.method setResult(ILcom/google/android/gms/games/snapshot/SnapshotMetadata;)V
    .registers 4

    new-instance v0, Lcom/google/games/bridge/SelectSnapshotUiRequest$Result;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/games/bridge/SelectSnapshotUiRequest$Result;-><init>(Lcom/google/games/bridge/SelectSnapshotUiRequest;ILcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    iget-object p1, p0, Lcom/google/games/bridge/SelectSnapshotUiRequest;->resultTaskSource:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/google/games/bridge/HelperFragment;->finishRequest(Lcom/google/games/bridge/HelperFragment$Request;)V

    return-void
.end method
