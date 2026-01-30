.class public final Lcom/onevcat/uniwebview/j1;
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
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/onevcat/uniwebview/j1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/onevcat/uniwebview/j1;->b:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, La/v;

    const/4 v0, 0x0

    sget-object v0, Lcom/google/android/gms/internal/ads_identifier/qn/GYVFDGEnzLd;->sfMyUdkmA:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, La/v;->m:La/o;

    iget-object v0, p0, Lcom/onevcat/uniwebview/j1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/onevcat/uniwebview/j1;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "key"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    sget-object p1, La/i;->c:La/i$a;

    sget-object p1, La/i;->d:La/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "message"

    const-string v1, "Trying to set null or empty key for header field. Please check you have set correct key."

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1}, La/i;->a(ILjava/lang/String;)V

    goto :goto_40

    :cond_2f
    if-nez v1, :cond_39

    iget-object p1, p1, La/o;->e:La/s;

    iget-object p1, p1, La/s;->g:Ljava/util/LinkedHashMap;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    :cond_39
    iget-object p1, p1, La/o;->e:La/s;

    iget-object p1, p1, La/s;->g:Ljava/util/LinkedHashMap;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_40
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
