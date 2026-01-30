.class public final Lcom/unity3d/player/j;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/j$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public c:Landroid/graphics/Bitmap;

.field public d:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/unity3d/player/j;->a:I

    invoke-virtual {p0}, Lcom/unity3d/player/j;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/unity3d/player/j;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "unity_static_splash"

    const-string v1, "drawable"

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/unity3d/player/j;->b:I

    if-eqz p1, :cond_20

    invoke-virtual {p0}, Lcom/unity3d/player/j;->forceLayout()V

    :cond_20
    return-void
.end method


# virtual methods
.method public final onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/unity3d/player/j;->c:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/unity3d/player/j;->c:Landroid/graphics/Bitmap;

    :cond_d
    iget-object v0, p0, Lcom/unity3d/player/j;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/unity3d/player/j;->d:Landroid/graphics/Bitmap;

    :cond_16
    return-void
.end method

.method public final onLayout(ZIIII)V
    .registers 15

    iget p1, p0, Lcom/unity3d/player/j;->b:I

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, Lcom/unity3d/player/j;->c:Landroid/graphics/Bitmap;

    const/4 p2, 0x0

    if-nez p1, :cond_1d

    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean p2, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    invoke-virtual {p0}, Lcom/unity3d/player/j;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget p4, p0, Lcom/unity3d/player/j;->b:I

    invoke-static {p3, p4, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/player/j;->c:Landroid/graphics/Bitmap;

    :cond_1d
    iget-object p1, p0, Lcom/unity3d/player/j;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget-object p3, p0, Lcom/unity3d/player/j;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    invoke-virtual {p0}, Lcom/unity3d/player/j;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Lcom/unity3d/player/j;->getHeight()I

    move-result p5

    if-eqz p4, :cond_c8

    if-nez p5, :cond_37

    goto/16 :goto_c8

    :cond_37
    int-to-float v0, p1

    int-to-float v1, p3

    div-float/2addr v0, v1

    int-to-float v1, p4

    int-to-float v2, p5

    div-float v3, v1, v2

    cmpg-float v3, v3, v0

    const/4 v4, 0x1

    if-gtz v3, :cond_45

    move v3, v4

    goto :goto_46

    :cond_45
    move v3, p2

    :goto_46
    sget-object v5, Lcom/unity3d/player/j$1;->a:[I

    iget v6, p0, Lcom/unity3d/player/j;->a:I

    add-int/lit8 v7, v6, -0x1

    aget v5, v5, v7

    const/4 v7, 0x2

    if-eq v5, v4, :cond_65

    if-eq v5, v7, :cond_57

    const/4 v8, 0x3

    if-eq v5, v8, :cond_57

    goto :goto_6f

    :cond_57
    sget p1, Lcom/unity3d/player/j$a;->c:I

    if-ne v6, p1, :cond_5d

    move p1, v4

    goto :goto_5e

    :cond_5d
    move p1, p2

    :goto_5e
    xor-int/2addr p1, v3

    if-eqz p1, :cond_6c

    div-float/2addr v1, v0

    float-to-int p3, v1

    move p1, p4

    goto :goto_6f

    :cond_65
    if-ge p4, p1, :cond_6a

    div-float/2addr v1, v0

    float-to-int p3, v1

    move p1, p4

    :cond_6a
    if-ge p5, p3, :cond_6f

    :cond_6c
    mul-float/2addr v2, v0

    float-to-int p1, v2

    move p3, p5

    :cond_6f
    :goto_6f
    iget-object p4, p0, Lcom/unity3d/player/j;->d:Landroid/graphics/Bitmap;

    if-eqz p4, :cond_8e

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    if-ne p4, p1, :cond_82

    iget-object p4, p0, Lcom/unity3d/player/j;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    if-ne p4, p3, :cond_82

    return-void

    :cond_82
    iget-object p4, p0, Lcom/unity3d/player/j;->d:Landroid/graphics/Bitmap;

    iget-object p5, p0, Lcom/unity3d/player/j;->c:Landroid/graphics/Bitmap;

    if-eq p4, p5, :cond_8e

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p4, 0x0

    iput-object p4, p0, Lcom/unity3d/player/j;->d:Landroid/graphics/Bitmap;

    :cond_8e
    iget-object p4, p0, Lcom/unity3d/player/j;->c:Landroid/graphics/Bitmap;

    invoke-static {p4, p1, p3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/player/j;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/unity3d/player/j;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p1, p3}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 p3, -0x1000000

    invoke-direct {p1, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/unity3d/player/j;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    iget-object p5, p0, Lcom/unity3d/player/j;->d:Landroid/graphics/Bitmap;

    invoke-direct {p3, p4, p5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/16 p4, 0x11

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    new-instance p4, Landroid/graphics/drawable/LayerDrawable;

    new-array p5, v7, [Landroid/graphics/drawable/Drawable;

    aput-object p1, p5, p2

    aput-object p3, p5, v4

    invoke-direct {p4, p5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p4}, Lcom/unity3d/player/j;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_c8
    :goto_c8
    return-void
.end method
