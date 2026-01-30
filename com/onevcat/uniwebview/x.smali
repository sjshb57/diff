.class public final Lcom/onevcat/uniwebview/x;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .registers 6

    iput-object p1, p0, Lcom/onevcat/uniwebview/x;->a:Ljava/lang/String;

    iput p2, p0, Lcom/onevcat/uniwebview/x;->b:I

    iput p3, p0, Lcom/onevcat/uniwebview/x;->c:I

    iput p4, p0, Lcom/onevcat/uniwebview/x;->d:I

    iput p5, p0, Lcom/onevcat/uniwebview/x;->e:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 8

    .line 1
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, La/v;

    const-string v2, "activity"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/onevcat/uniwebview/x;->a:Ljava/lang/String;

    new-instance v4, La/f;

    invoke-direct {v4}, La/f;-><init>()V

    const/4 v5, 0x0

    .line 2
    invoke-direct {v1, v0, v3, v4, v5}, La/v;-><init>(Landroid/app/Activity;Ljava/lang/String;La/i0;La/e0;)V

    .line 3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v4, v1, La/v;->a:Landroid/app/Activity;

    iget-object v5, v1, La/v;->d:La/b0;

    invoke-virtual {v4, v5, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-direct {v4, v3, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v3, v1, La/v;->o:Landroid/widget/LinearLayout;

    iget-object v5, v1, La/v;->n:La/x;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, v1, La/v;->o:Landroid/widget/LinearLayout;

    iget-object v5, v1, La/v;->m:La/o;

    invoke-virtual {v3, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v1, La/v;->d:La/b0;

    iget-object v4, v1, La/v;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, La/e;->b:La/e$a;

    .line 4
    sget-object v0, La/e;->c:La/e;

    .line 5
    iget-object v3, v1, La/v;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string v4, "container"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "name"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, La/i;->c:La/i$a;

    .line 7
    sget-object v4, La/i;->d:La/i;

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Adding web view container to manager: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, La/i;->b(Ljava/lang/String;)V

    iget-object v0, v0, La/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-boolean v0, La/o$b;->e:Z

    if-eqz v0, :cond_81

    .line 10
    iget-object v0, v1, La/v;->d:La/b0;

    iget-object v3, v1, La/v;->a:Landroid/app/Activity;

    .line 11
    const-string v4, "frameLayout"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, La/b;

    .line 12
    invoke-direct {v2, v0, v3}, La/b;-><init>(Landroid/widget/FrameLayout;Landroid/app/Activity;)V

    .line 13
    iput-object v2, v1, La/v;->l:La/b;

    .line 14
    :cond_81
    iget v0, p0, Lcom/onevcat/uniwebview/x;->b:I

    iget v2, p0, Lcom/onevcat/uniwebview/x;->c:I

    iget v3, p0, Lcom/onevcat/uniwebview/x;->d:I

    iget v4, p0, Lcom/onevcat/uniwebview/x;->e:I

    invoke-virtual {v1, v0, v2, v3, v4}, La/v;->a(IIII)V

    .line 15
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
