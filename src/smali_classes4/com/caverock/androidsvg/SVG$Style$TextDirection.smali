.class public enum Lcom/caverock/androidsvg/SVG$Style$TextDirection;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "TextDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/caverock/androidsvg/SVG$Style$TextDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static $VALUES:[Lcom/caverock/androidsvg/SVG$Style$TextDirection;

.field public static final LTR:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

.field public static final RTL:Lcom/caverock/androidsvg/SVG$Style$TextDirection;


# direct methods
.method static final constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    const-string v1, "LTR"

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Style$TextDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->LTR:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    new-instance v0, Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    const-string v1, "RTL"

    invoke-direct {v0, v1, v3}, Lcom/caverock/androidsvg/SVG$Style$TextDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->RTL:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->LTR:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->RTL:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    aput-object v1, v0, v3

    sput-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->$VALUES:[Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextDirection;
    .registers 5

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->$VALUES:[Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    const/4 v0, 0x0

    :goto_3
    array-length v2, v1

    if-lt v0, v2, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_c
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    return-object v2

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static final values()[Lcom/caverock/androidsvg/SVG$Style$TextDirection;
    .registers 1

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->$VALUES:[Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    invoke-virtual {v0}, [Lcom/caverock/androidsvg/SVG$Style$TextDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    return-object v0
.end method
