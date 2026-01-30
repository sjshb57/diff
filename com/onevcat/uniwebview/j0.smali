.class public final Lcom/onevcat/uniwebview/j0;
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

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:F


# direct methods
.method public constructor <init>(Ljava/lang/String;FFF)V
    .registers 5

    iput-object p1, p0, Lcom/onevcat/uniwebview/j0;->a:Ljava/lang/String;

    iput p2, p0, Lcom/onevcat/uniwebview/j0;->b:F

    iput p3, p0, Lcom/onevcat/uniwebview/j0;->c:F

    iput p4, p0, Lcom/onevcat/uniwebview/j0;->d:F

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 6

    .line 1
    sget-object v0, La/l;->b:La/l$a;

    .line 2
    sget-object v0, La/l;->c:La/l;

    .line 3
    iget-object v1, p0, Lcom/onevcat/uniwebview/j0;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string v2, "name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, La/l;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/g0;

    if-eqz v0, :cond_31

    .line 5
    iget v1, p0, Lcom/onevcat/uniwebview/j0;->b:F

    iget v2, p0, Lcom/onevcat/uniwebview/j0;->c:F

    iget v3, p0, Lcom/onevcat/uniwebview/j0;->d:F

    const/16 v4, 0xff

    int-to-float v4, v4

    mul-float/2addr v1, v4

    float-to-int v1, v1

    mul-float/2addr v2, v4

    float-to-int v2, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 6
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, La/g0;->g:Ljava/lang/Integer;

    .line 7
    :cond_31
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
