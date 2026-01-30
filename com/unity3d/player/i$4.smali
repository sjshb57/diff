.class public final Lcom/unity3d/player/i$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/i;->createSoftInputView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/unity3d/player/i;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/i;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/player/i$4;->a:Lcom/unity3d/player/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x6

    const/4 p3, 0x0

    if-ne p2, p1, :cond_d

    iget-object p1, p0, Lcom/unity3d/player/i$4;->a:Lcom/unity3d/player/i;

    invoke-static {p1}, Lcom/unity3d/player/i;->b(Lcom/unity3d/player/i;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/unity3d/player/i;->a(Lcom/unity3d/player/i;Ljava/lang/String;Z)V

    :cond_d
    return p3
.end method
