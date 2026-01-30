.class public final Lcom/unity3d/player/UnityPlayer$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->setSelection(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/UnityPlayer;II)V
    .registers 4

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$9;->c:Lcom/unity3d/player/UnityPlayer;

    iput p2, p0, Lcom/unity3d/player/UnityPlayer$9;->a:I

    iput p3, p0, Lcom/unity3d/player/UnityPlayer$9;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$9;->c:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer;->mSoftInputDialog:Lcom/unity3d/player/i;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$9;->c:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer;->mSoftInputDialog:Lcom/unity3d/player/i;

    iget v1, p0, Lcom/unity3d/player/UnityPlayer$9;->a:I

    iget v2, p0, Lcom/unity3d/player/UnityPlayer$9;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/i;->a(II)V

    :cond_11
    return-void
.end method
