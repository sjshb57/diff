.class public final Lcom/unity3d/player/UnityPlayer$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/unity3d/player/UnityPlayer$3;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/UnityPlayer$3;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$3$1;->a:Lcom/unity3d/player/UnityPlayer$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$3$1;->a:Lcom/unity3d/player/UnityPlayer$3;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$3;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->access$1200(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/h;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$3$1;->a:Lcom/unity3d/player/UnityPlayer$3;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$3;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->access$1200(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/h;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer$3$1;->a:Lcom/unity3d/player/UnityPlayer$3;

    iget-object v1, v1, Lcom/unity3d/player/UnityPlayer$3;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/h;->b(Landroid/view/ViewGroup;)V

    :cond_19
    return-void
.end method
