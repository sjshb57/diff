.class public Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;


# instance fields
.field public b:Lcom/unity3d/player/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;->a:Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;

    if-nez v0, :cond_17

    :try_start_7
    const-string v0, "com.google.android.play.core.assetpacks.AssetPackManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    invoke-static {p1}, Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;->a(Landroid/content/Context;)Lcom/unity3d/player/d;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;->b:Lcom/unity3d/player/d;
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_12} :catch_13

    return-void

    :catch_13
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;->b:Lcom/unity3d/player/d;

    return-void

    :cond_17
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "PlayAssetDeliveryUnityWrapper should be created only once. Use getInstance() instead."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Landroid/content/Context;)Lcom/unity3d/player/d;
    .registers 1

    invoke-static {p0}, Lcom/unity3d/player/a;->a(Landroid/content/Context;)Lcom/unity3d/player/d;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .registers 3

    invoke-virtual {p0}, Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;->playCoreApiMissing()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AssetPackManager API is not available! Make sure your gradle project includes \"com.google.android.play:core\" dependency."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;
    .registers 4

    const-class v0, Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;

    monitor-enter v0

    :goto_3
    :try_start_3
    sget-object v1, Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;->a:Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_25

    if-nez v1, :cond_19

    :try_start_7
    const-class v1, Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_e} :catch_f
    .catchall {:try_start_7 .. :try_end_e} :catchall_25

    goto :goto_3

    :catch_f
    move-exception v1

    :try_start_10
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_25

    goto :goto_3

    :cond_19
    if-eqz v1, :cond_1d

    monitor-exit v0

    return-object v1

    :cond_1d
    :try_start_1d
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "PlayAssetDeliveryUnityWrapper is not yet initialised."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_25

    :catchall_25
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init(Landroid/content/Context;)Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;
    .registers 3

    const-class v0, Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;->a:Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;

    if-nez v1, :cond_17

    new-instance v1, Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;

    invoke-direct {v1, p0}, Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;->a:Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;

    const-class p0, Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    sget-object p0, Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;->a:Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1f

    monitor-exit v0

    return-object p0

    :cond_17
    :try_start_17
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "PlayAssetDeliveryUnityWrapper.init() should be called only once. Use getInstance() instead."

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public cancelAssetPackDownload(Ljava/lang/String;)V
    .registers 2

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;->cancelAssetPackDownloads([Ljava/lang/String;)V

    return-void
.end method

.method public cancelAssetPackDownloads([Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;->a()V

    iget-object v0, p0, Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;->b:Lcom/unity3d/player/d;

    invoke-interface {v0, p1}, Lcom/unity3d/player/d;->a([Ljava/lang/String;)V

    return-void
.end method

.method public downloadAssetPack(Ljava/lang/String;Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;)V
    .registers 3

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;->downloadAssetPacks([Ljava/lang/String;Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;)V

    return-void
.end method

.method public downloadAssetPacks([Ljava/lang/String;Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;)V
    .registers 4

    invoke-direct {p0}, Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;->a()V

    iget-object v0, p0, Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;->b:Lcom/unity3d/player/d;

    invoke-interface {v0, p1, p2}, Lcom/unity3d/player/d;->a([Ljava/lang/String;Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;)V

    return-void
.end method

.method public getAssetPackPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;->a()V

    iget-object v0, p0, Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;->b:Lcom/unity3d/player/d;

    invoke-interface {v0, p1}, Lcom/unity3d/player/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAssetPackState(Ljava/lang/String;Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;)V
    .registers 3

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;->getAssetPackStates([Ljava/lang/String;Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;)V

    return-void
.end method

.method public getAssetPackStates([Ljava/lang/String;Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;)V
    .registers 4

    invoke-direct {p0}, Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;->a()V

    iget-object v0, p0, Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;->b:Lcom/unity3d/player/d;

    invoke-interface {v0, p1, p2}, Lcom/unity3d/player/d;->a([Ljava/lang/String;Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;)V

    return-void
.end method

.method public playCoreApiMissing()Z
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;->b:Lcom/unity3d/player/d;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public registerDownloadStatusListener(Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0}, Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;->a()V

    iget-object v0, p0, Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;->b:Lcom/unity3d/player/d;

    invoke-interface {v0, p1}, Lcom/unity3d/player/d;->a(Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public removeAssetPack(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;->a()V

    iget-object v0, p0, Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;->b:Lcom/unity3d/player/d;

    invoke-interface {v0, p1}, Lcom/unity3d/player/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public requestToUseMobileData(Landroid/app/Activity;Lcom/unity3d/player/IAssetPackManagerMobileDataConfirmationCallback;)V
    .registers 4

    invoke-direct {p0}, Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;->a()V

    iget-object v0, p0, Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;->b:Lcom/unity3d/player/d;

    invoke-interface {v0, p1, p2}, Lcom/unity3d/player/d;->a(Landroid/app/Activity;Lcom/unity3d/player/IAssetPackManagerMobileDataConfirmationCallback;)V

    return-void
.end method

.method public unregisterDownloadStatusListener(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;->a()V

    iget-object v0, p0, Lcom/unity3d/player/PlayAssetDeliveryUnityWrapper;->b:Lcom/unity3d/player/d;

    invoke-interface {v0, p1}, Lcom/unity3d/player/d;->a(Ljava/lang/Object;)V

    return-void
.end method
