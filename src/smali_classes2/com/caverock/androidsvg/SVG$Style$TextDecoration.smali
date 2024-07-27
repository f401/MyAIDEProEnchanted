.class public enum Lcom/caverock/androidsvg/SVG$Style$TextDecoration;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "TextDecoration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/caverock/androidsvg/SVG$Style$TextDecoration;",
        ">;"
    }
.end annotation


# static fields
.field private static $VALUES:[Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

.field public static final Blink:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

.field public static final LineThrough:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

.field public static final None:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

.field public static final Overline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

.field public static final Underline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;


# direct methods
.method static final constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->None:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    new-instance v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    const-string v1, "Underline"

    invoke-direct {v0, v1, v3}, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Underline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    new-instance v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    const-string v1, "Overline"

    invoke-direct {v0, v1, v4}, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Overline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    new-instance v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    const-string v1, "LineThrough"

    invoke-direct {v0, v1, v5}, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->LineThrough:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    new-instance v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    const-string v1, "Blink"

    invoke-direct {v0, v1, v6}, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Blink:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->None:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    aput-object v1, v0, v2

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Underline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    aput-object v1, v0, v3

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Overline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    aput-object v1, v0, v4

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->LineThrough:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    aput-object v1, v0, v5

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Blink:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    aput-object v1, v0, v6

    sput-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->$VALUES:[Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextDecoration;
    .registers 5

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->$VALUES:[Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final values()[Lcom/caverock/androidsvg/SVG$Style$TextDecoration;
    .registers 1

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->$VALUES:[Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    invoke-virtual {v0}, [Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    return-object v0
.end method
