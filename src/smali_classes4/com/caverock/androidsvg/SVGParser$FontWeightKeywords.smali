.class Lcom/caverock/androidsvg/SVGParser$FontWeightKeywords;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FontWeightKeywords"
.end annotation


# static fields
.field private static final fontWeightKeywords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static final constructor <clinit>()V
    .registers 6

    const/16 v5, 0x2bc

    const/16 v4, 0x190

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/caverock/androidsvg/SVGParser$FontWeightKeywords;->fontWeightKeywords:Ljava/util/Map;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$FontWeightKeywords;->fontWeightKeywords:Ljava/util/Map;

    const-string v1, "normal"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$FontWeightKeywords;->fontWeightKeywords:Ljava/util/Map;

    const-string v1, "bold"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$FontWeightKeywords;->fontWeightKeywords:Ljava/util/Map;

    const-string v1, "bolder"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$FontWeightKeywords;->fontWeightKeywords:Ljava/util/Map;

    const-string v1, "lighter"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$FontWeightKeywords;->fontWeightKeywords:Ljava/util/Map;

    const-string v1, "100"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$FontWeightKeywords;->fontWeightKeywords:Ljava/util/Map;

    const-string v1, "200"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xc8

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$FontWeightKeywords;->fontWeightKeywords:Ljava/util/Map;

    const-string v1, "300"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x12c

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$FontWeightKeywords;->fontWeightKeywords:Ljava/util/Map;

    const-string v1, "400"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$FontWeightKeywords;->fontWeightKeywords:Ljava/util/Map;

    const-string v1, "500"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1f4

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$FontWeightKeywords;->fontWeightKeywords:Ljava/util/Map;

    const-string v1, "600"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x258

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$FontWeightKeywords;->fontWeightKeywords:Ljava/util/Map;

    const-string v1, "700"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$FontWeightKeywords;->fontWeightKeywords:Ljava/util/Map;

    const-string v1, "800"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x320

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$FontWeightKeywords;->fontWeightKeywords:Ljava/util/Map;

    const-string v1, "900"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x384

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$FontWeightKeywords;->fontWeightKeywords:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method
