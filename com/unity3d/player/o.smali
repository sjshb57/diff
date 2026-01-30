.class public final Lcom/unity3d/player/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/o$a;
    }
.end annotation


# instance fields
.field public a:Lcom/unity3d/player/UnityPlayer;

.field public b:Landroid/content/Context;

.field public c:Lcom/unity3d/player/o$a;

.field public final d:Ljava/util/concurrent/Semaphore;

.field public final e:Ljava/util/concurrent/locks/Lock;

.field public f:Lcom/unity3d/player/n;

.field public g:I

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(Lcom/unity3d/player/UnityPlayer;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/o;->a:Lcom/unity3d/player/UnityPlayer;

    iput-object v0, p0, Lcom/unity3d/player/o;->b:Landroid/content/Context;

    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/unity3d/player/o;->d:Ljava/util/concurrent/Semaphore;

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/unity3d/player/o;->e:Ljava/util/concurrent/locks/Lock;

    iput-object v0, p0, Lcom/unity3d/player/o;->f:Lcom/unity3d/player/n;

    const/4 v0, 0x2

    iput v0, p0, Lcom/unity3d/player/o;->g:I

    iput-boolean v2, p0, Lcom/unity3d/player/o;->h:Z

    iput-boolean v2, p0, Lcom/unity3d/player/o;->i:Z

    iput-object p1, p0, Lcom/unity3d/player/o;->a:Lcom/unity3d/player/UnityPlayer;

    return-void
.end method

.method public static synthetic a(Lcom/unity3d/player/o;I)I
    .registers 2

    iput p1, p0, Lcom/unity3d/player/o;->g:I

    return p1
.end method

.method public static synthetic a(Lcom/unity3d/player/o;)Lcom/unity3d/player/n;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/player/o;->f:Lcom/unity3d/player/n;

    return-object p0
.end method

.method public static synthetic a(Lcom/unity3d/player/o;Lcom/unity3d/player/n;)Lcom/unity3d/player/n;
    .registers 2

    iput-object p1, p0, Lcom/unity3d/player/o;->f:Lcom/unity3d/player/n;

    return-object p1
.end method

.method public static synthetic b(Lcom/unity3d/player/o;)Ljava/util/concurrent/Semaphore;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/player/o;->d:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method public static synthetic c(Lcom/unity3d/player/o;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/player/o;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic d(Lcom/unity3d/player/o;)Ljava/util/concurrent/locks/Lock;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/player/o;->e:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/o;->f:Lcom/unity3d/player/n;

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/unity3d/player/o;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v1, v0}, Lcom/unity3d/player/UnityPlayer;->removeViewFromPlayer(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/player/o;->i:Z

    iget-object v0, p0, Lcom/unity3d/player/o;->f:Lcom/unity3d/player/n;

    invoke-virtual {v0}, Lcom/unity3d/player/n;->destroyPlayer()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/o;->f:Lcom/unity3d/player/n;

    iget-object v0, p0, Lcom/unity3d/player/o;->c:Lcom/unity3d/player/o$a;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Lcom/unity3d/player/o$a;->a()V

    :cond_1b
    return-void
.end method

.method public static synthetic e(Lcom/unity3d/player/o;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/unity3d/player/o;->i:Z

    return p0
.end method

.method public static synthetic f(Lcom/unity3d/player/o;)V
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/player/o;->d()V

    return-void
.end method

.method public static synthetic g(Lcom/unity3d/player/o;)Lcom/unity3d/player/UnityPlayer;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/player/o;->a:Lcom/unity3d/player/UnityPlayer;

    return-object p0
.end method

.method public static synthetic h(Lcom/unity3d/player/o;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/o;->i:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/o;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/unity3d/player/o;->f:Lcom/unity3d/player/n;

    if-eqz v0, :cond_22

    iget v1, p0, Lcom/unity3d/player/o;->g:I

    if-nez v1, :cond_11

    invoke-virtual {v0}, Lcom/unity3d/player/n;->CancelOnPrepare()V

    goto :goto_22

    :cond_11
    iget-boolean v1, p0, Lcom/unity3d/player/o;->i:Z

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Lcom/unity3d/player/n;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/unity3d/player/o;->h:Z

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/unity3d/player/o;->f:Lcom/unity3d/player/n;

    invoke-virtual {v0}, Lcom/unity3d/player/n;->pause()V

    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/unity3d/player/o;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;IIIZJJLcom/unity3d/player/o$a;)Z
    .registers 26

    move-object v11, p0

    iget-object v0, v11, Lcom/unity3d/player/o;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object/from16 v0, p11

    iput-object v0, v11, Lcom/unity3d/player/o;->c:Lcom/unity3d/player/o$a;

    move-object v0, p1

    iput-object v0, v11, Lcom/unity3d/player/o;->b:Landroid/content/Context;

    iget-object v0, v11, Lcom/unity3d/player/o;->d:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    const/4 v12, 0x2

    iput v12, v11, Lcom/unity3d/player/o;->g:I

    new-instance v13, Lcom/unity3d/player/o$1;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/unity3d/player/o$1;-><init>(Lcom/unity3d/player/o;Ljava/lang/String;IIIZJJ)V

    invoke-virtual {p0, v13}, Lcom/unity3d/player/o;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    :try_start_2e
    iget-object v1, v11, Lcom/unity3d/player/o;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v1, v11, Lcom/unity3d/player/o;->d:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    iget-object v1, v11, Lcom/unity3d/player/o;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget v1, v11, Lcom/unity3d/player/o;->g:I
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_3f} :catch_42

    if-eq v1, v12, :cond_42

    const/4 v0, 0x1

    :catch_42
    :cond_42
    new-instance v1, Lcom/unity3d/player/o$2;

    invoke-direct {v1, p0}, Lcom/unity3d/player/o$2;-><init>(Lcom/unity3d/player/o;)V

    invoke-virtual {p0, v1}, Lcom/unity3d/player/o;->runOnUiThread(Ljava/lang/Runnable;)V

    if-eqz v0, :cond_57

    iget v1, v11, Lcom/unity3d/player/o;->g:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_57

    new-instance v1, Lcom/unity3d/player/o$3;

    invoke-direct {v1, p0}, Lcom/unity3d/player/o$3;-><init>(Lcom/unity3d/player/o;)V

    goto :goto_5c

    :cond_57
    new-instance v1, Lcom/unity3d/player/o$4;

    invoke-direct {v1, p0}, Lcom/unity3d/player/o$4;-><init>(Lcom/unity3d/player/o;)V

    :goto_5c
    invoke-virtual {p0, v1}, Lcom/unity3d/player/o;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v1, v11, Lcom/unity3d/player/o;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/o;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/unity3d/player/o;->f:Lcom/unity3d/player/n;

    if-eqz v0, :cond_14

    iget-boolean v1, p0, Lcom/unity3d/player/o;->i:Z

    if-eqz v1, :cond_14

    iget-boolean v1, p0, Lcom/unity3d/player/o;->h:Z

    if-nez v1, :cond_14

    invoke-virtual {v0}, Lcom/unity3d/player/n;->start()V

    :cond_14
    iget-object v0, p0, Lcom/unity3d/player/o;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/o;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/unity3d/player/o;->f:Lcom/unity3d/player/n;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/unity3d/player/n;->updateVideoLayout()V

    :cond_c
    iget-object v0, p0, Lcom/unity3d/player/o;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method protected final runOnUiThread(Ljava/lang/Runnable;)V
    .registers 4

    iget-object v0, p0, Lcom/unity3d/player/o;->b:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_c

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_c
    const/4 p1, 0x5

    const-string v0, "Not running from an Activity; Ignoring execution request..."

    invoke-static {p1, v0}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V

    return-void
.end method
