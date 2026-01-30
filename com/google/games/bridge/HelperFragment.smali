.class public Lcom/google/games/bridge/HelperFragment;
.super Landroid/app/Fragment;
.source "HelperFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/games/bridge/HelperFragment$Request;
    }
.end annotation


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String; = "gpg.HelperFragment"

.field static final RC_RESOLUTION_DIALOG:I = 0x2333

.field static final RC_SELECT_OPPONENTS_UI:I = 0x232e

.field static final RC_SELECT_SNAPSHOT_UI:I = 0x232c

.field static final RC_SHOW_REQUEST_PERMISSIONS_UI:I = 0x2332

.field static final RC_SIGN_IN:I = 0x232a

.field static final RC_SIMPLE_UI:I = 0x232b

.field private static final TAG:Ljava/lang/String; = "HelperFragment"

.field private static helperFragment:Lcom/google/games/bridge/HelperFragment;

.field private static final lock:Ljava/lang/Object;

.field private static pendingRequest:Lcom/google/games/bridge/HelperFragment$Request;

.field private static runningRequest:Lcom/google/games/bridge/HelperFragment$Request;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/games/bridge/HelperFragment;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static askForLoadFriendsResolution(Landroid/app/Activity;Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/games/bridge/GenericResolutionUiRequest;

    invoke-direct {v0, p1}, Lcom/google/games/bridge/GenericResolutionUiRequest;-><init>(Landroid/app/PendingIntent;)V

    invoke-static {p0, v0}, Lcom/google/games/bridge/HelperFragment;->startRequest(Landroid/app/Activity;Lcom/google/games/bridge/HelperFragment$Request;)Z

    move-result p0

    if-nez p0, :cond_14

    const/16 p0, -0xc

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/games/bridge/GenericResolutionUiRequest;->setResult(Ljava/lang/Integer;)V

    :cond_14
    invoke-virtual {v0}, Lcom/google/games/bridge/GenericResolutionUiRequest;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static createInvisibleView(Landroid/app/Activity;)Landroid/view/View;
    .registers 2

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x4

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setClickable(Z)V

    return-object v0
.end method

.method static finishRequest(Lcom/google/games/bridge/HelperFragment$Request;)V
    .registers 3

    sget-object v0, Lcom/google/games/bridge/HelperFragment;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/games/bridge/HelperFragment;->runningRequest:Lcom/google/games/bridge/HelperFragment$Request;

    if-ne v1, p0, :cond_a

    const/4 p0, 0x0

    sput-object p0, Lcom/google/games/bridge/HelperFragment;->runningRequest:Lcom/google/games/bridge/HelperFragment$Request;

    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public static getDecorView(Landroid/app/Activity;)Landroid/view/View;
    .registers 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static getHelperFragment(Landroid/app/Activity;)Lcom/google/games/bridge/HelperFragment;
    .registers 5

    const-string v0, "HelperFragment"

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "gpg.HelperFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/games/bridge/HelperFragment;

    if-nez v1, :cond_49

    :try_start_10
    const-string v1, "Creating fragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/google/games/bridge/HelperFragment;

    invoke-direct {v1}, Lcom/google/games/bridge/HelperFragment;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_29

    goto :goto_49

    :catchall_29
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Cannot launch token fragment:"

    if-eqz v2, :cond_3f

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_44

    :cond_3f
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_44
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0

    :cond_49
    :goto_49
    return-object v1
.end method

.method public static isResolutionRequired(Ljava/lang/Exception;)Z
    .registers 1

    instance-of p0, p0, Lcom/google/android/gms/common/api/ResolvableApiException;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private processRequest()V
    .registers 4

    sget-object v0, Lcom/google/games/bridge/HelperFragment;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/games/bridge/HelperFragment;->runningRequest:Lcom/google/games/bridge/HelperFragment$Request;

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    sget-object v1, Lcom/google/games/bridge/HelperFragment;->pendingRequest:Lcom/google/games/bridge/HelperFragment$Request;

    const/4 v2, 0x0

    sput-object v2, Lcom/google/games/bridge/HelperFragment;->pendingRequest:Lcom/google/games/bridge/HelperFragment$Request;

    sput-object v1, Lcom/google/games/bridge/HelperFragment;->runningRequest:Lcom/google/games/bridge/HelperFragment$Request;

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_18

    if-nez v1, :cond_14

    return-void

    :cond_14
    invoke-interface {v1, p0}, Lcom/google/games/bridge/HelperFragment$Request;->process(Lcom/google/games/bridge/HelperFragment;)V

    return-void

    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public static showAchievementUi(Landroid/app/Activity;)Lcom/google/android/gms/tasks/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/games/bridge/AchievementUiRequest;

    invoke-direct {v0}, Lcom/google/games/bridge/AchievementUiRequest;-><init>()V

    invoke-static {p0, v0}, Lcom/google/games/bridge/HelperFragment;->startRequest(Landroid/app/Activity;Lcom/google/games/bridge/HelperFragment$Request;)Z

    move-result p0

    if-nez p0, :cond_10

    const/16 p0, -0xc

    invoke-virtual {v0, p0}, Lcom/google/games/bridge/AchievementUiRequest;->setResult(I)V

    :cond_10
    invoke-virtual {v0}, Lcom/google/games/bridge/AchievementUiRequest;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static showAllLeaderboardsUi(Landroid/app/Activity;)Lcom/google/android/gms/tasks/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/games/bridge/AllLeaderboardsUiRequest;

    invoke-direct {v0}, Lcom/google/games/bridge/AllLeaderboardsUiRequest;-><init>()V

    invoke-static {p0, v0}, Lcom/google/games/bridge/HelperFragment;->startRequest(Landroid/app/Activity;Lcom/google/games/bridge/HelperFragment$Request;)Z

    move-result p0

    if-nez p0, :cond_10

    const/16 p0, -0xc

    invoke-virtual {v0, p0}, Lcom/google/games/bridge/AllLeaderboardsUiRequest;->setResult(I)V

    :cond_10
    invoke-virtual {v0}, Lcom/google/games/bridge/AllLeaderboardsUiRequest;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static showCompareProfileWithAlternativeNameHintsUI(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/games/bridge/CompareProfileUiRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/games/bridge/CompareProfileUiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/google/games/bridge/HelperFragment;->startRequest(Landroid/app/Activity;Lcom/google/games/bridge/HelperFragment$Request;)Z

    move-result p0

    if-nez p0, :cond_10

    const/16 p0, -0xc

    invoke-virtual {v0, p0}, Lcom/google/games/bridge/CompareProfileUiRequest;->setResult(I)V

    :cond_10
    invoke-virtual {v0}, Lcom/google/games/bridge/CompareProfileUiRequest;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static showLeaderboardUi(Landroid/app/Activity;Ljava/lang/String;I)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/games/bridge/LeaderboardUiRequest;

    invoke-direct {v0, p1, p2}, Lcom/google/games/bridge/LeaderboardUiRequest;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, v0}, Lcom/google/games/bridge/HelperFragment;->startRequest(Landroid/app/Activity;Lcom/google/games/bridge/HelperFragment$Request;)Z

    move-result p0

    if-nez p0, :cond_10

    const/16 p0, -0xc

    invoke-virtual {v0, p0}, Lcom/google/games/bridge/LeaderboardUiRequest;->setResult(I)V

    :cond_10
    invoke-virtual {v0}, Lcom/google/games/bridge/LeaderboardUiRequest;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static showSelectSnapshotUi(Landroid/app/Activity;Ljava/lang/String;ZZI)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "ZZI)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/games/bridge/SelectSnapshotUiRequest$Result;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/games/bridge/SelectSnapshotUiRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/games/bridge/SelectSnapshotUiRequest;-><init>(Ljava/lang/String;ZZI)V

    invoke-static {p0, v0}, Lcom/google/games/bridge/HelperFragment;->startRequest(Landroid/app/Activity;Lcom/google/games/bridge/HelperFragment$Request;)Z

    move-result p0

    if-nez p0, :cond_f

    const/4 p0, -0x5

    invoke-virtual {v0, p0}, Lcom/google/games/bridge/SelectSnapshotUiRequest;->setResult(I)V

    :cond_f
    invoke-virtual {v0}, Lcom/google/games/bridge/SelectSnapshotUiRequest;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method private static startRequest(Landroid/app/Activity;Lcom/google/games/bridge/HelperFragment$Request;)Z
    .registers 4

    sget-object v0, Lcom/google/games/bridge/HelperFragment;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/games/bridge/HelperFragment;->pendingRequest:Lcom/google/games/bridge/HelperFragment$Request;

    if-nez v1, :cond_f

    sget-object v1, Lcom/google/games/bridge/HelperFragment;->runningRequest:Lcom/google/games/bridge/HelperFragment$Request;

    if-nez v1, :cond_f

    sput-object p1, Lcom/google/games/bridge/HelperFragment;->pendingRequest:Lcom/google/games/bridge/HelperFragment$Request;

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_21

    if-eqz p1, :cond_20

    invoke-static {p0}, Lcom/google/games/bridge/HelperFragment;->getHelperFragment(Landroid/app/Activity;)Lcom/google/games/bridge/HelperFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/games/bridge/HelperFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-direct {p0}, Lcom/google/games/bridge/HelperFragment;->processRequest()V

    :cond_20
    return p1

    :catchall_21
    move-exception p0

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    sget-object v0, Lcom/google/games/bridge/HelperFragment;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    sget-object v1, Lcom/google/games/bridge/HelperFragment;->runningRequest:Lcom/google/games/bridge/HelperFragment$Request;

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_10

    if-nez v1, :cond_c

    return-void

    :cond_c
    invoke-interface {v1, p1, p2, p3}, Lcom/google/games/bridge/HelperFragment$Request;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public onResume()V
    .registers 3

    const-string v0, "HelperFragment"

    const-string v1, "onResume called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    sget-object v0, Lcom/google/games/bridge/HelperFragment;->helperFragment:Lcom/google/games/bridge/HelperFragment;

    if-nez v0, :cond_10

    sput-object p0, Lcom/google/games/bridge/HelperFragment;->helperFragment:Lcom/google/games/bridge/HelperFragment;

    :cond_10
    invoke-direct {p0}, Lcom/google/games/bridge/HelperFragment;->processRequest()V

    return-void
.end method
