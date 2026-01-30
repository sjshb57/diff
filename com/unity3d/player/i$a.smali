.class public final Lcom/unity3d/player/i$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    sput v0, Lcom/unity3d/player/i$a;->a:I

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    sput v0, Lcom/unity3d/player/i$a;->b:I

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    sput v0, Lcom/unity3d/player/i$a;->c:I

    return-void
.end method

.method public static synthetic a()I
    .registers 1

    sget v0, Lcom/unity3d/player/i$a;->b:I

    return v0
.end method

.method public static synthetic b()I
    .registers 1

    sget v0, Lcom/unity3d/player/i$a;->a:I

    return v0
.end method

.method public static synthetic c()I
    .registers 1

    sget v0, Lcom/unity3d/player/i$a;->c:I

    return v0
.end method
