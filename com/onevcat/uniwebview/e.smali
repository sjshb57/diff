.class public final Lcom/onevcat/uniwebview/e;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "La/v;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIIFFLjava/lang/String;)V
    .registers 8

    iput p1, p0, Lcom/onevcat/uniwebview/e;->a:I

    iput p2, p0, Lcom/onevcat/uniwebview/e;->b:I

    iput p3, p0, Lcom/onevcat/uniwebview/e;->c:I

    iput p4, p0, Lcom/onevcat/uniwebview/e;->d:I

    iput p5, p0, Lcom/onevcat/uniwebview/e;->e:F

    iput p6, p0, Lcom/onevcat/uniwebview/e;->f:F

    iput-object p7, p0, Lcom/onevcat/uniwebview/e;->g:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    check-cast v8, La/v;

    const-string v1, "it"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, v0, Lcom/onevcat/uniwebview/e;->a:I

    iget v4, v0, Lcom/onevcat/uniwebview/e;->b:I

    iget v5, v0, Lcom/onevcat/uniwebview/e;->c:I

    iget v6, v0, Lcom/onevcat/uniwebview/e;->d:I

    iget v1, v0, Lcom/onevcat/uniwebview/e;->e:F

    iget v2, v0, Lcom/onevcat/uniwebview/e;->f:F

    iget-object v7, v0, Lcom/onevcat/uniwebview/e;->g:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "identifier"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v8, La/v;->i:Landroid/view/animation/AnimationSet;

    const/4 v10, 0x0

    if-eqz v9, :cond_3a

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "message"

    const-string v3, "Trying to animate web view but an other transition animation is not finished yet. Ignore this one."

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v3}, La/i;->a(ILjava/lang/String;)V

    goto/16 :goto_b0

    :cond_3a
    const/16 v9, 0x3e8

    int-to-float v9, v9

    mul-float/2addr v1, v9

    float-to-long v14, v1

    mul-float/2addr v2, v9

    float-to-long v1, v2

    new-instance v13, Landroid/view/animation/AnimationSet;

    invoke-direct {v13, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v9, Landroid/view/animation/TranslateAnimation;

    int-to-float v10, v3

    iget-object v11, v8, La/v;->d:La/b0;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    int-to-float v11, v4

    iget-object v12, v8, La/v;->d:La/b0;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getY()F

    move-result v12

    sub-float/2addr v11, v12

    const/4 v12, 0x0

    invoke-direct {v9, v12, v10, v12, v11}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v9, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v13, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v11, La/k;

    iget-object v10, v8, La/v;->d:La/b0;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v16

    iget-object v9, v8, La/v;->d:La/b0;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v17

    move-object v9, v11

    move-object v0, v11

    move/from16 v11, v16

    move-wide/from16 v18, v14

    move v15, v12

    move v12, v5

    move-object v14, v13

    move/from16 v13, v17

    move/from16 v16, v4

    move/from16 v17, v5

    move-object/from16 v20, v14

    move-wide/from16 v4, v18

    move v14, v6

    invoke-direct/range {v9 .. v14}, La/k;-><init>(Landroid/view/View;IIII)V

    invoke-virtual {v0, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    move-object/from16 v9, v20

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, La/t;

    move-object v1, v0

    move-object v2, v8

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-direct/range {v1 .. v7}, La/t;-><init>(La/v;IIIILjava/lang/String;)V

    invoke-virtual {v9, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, v8, La/v;->d:La/b0;

    invoke-virtual {v0, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    move v10, v15

    :goto_b0
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
