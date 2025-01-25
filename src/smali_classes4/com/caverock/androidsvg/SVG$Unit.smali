.class enum Lcom/caverock/androidsvg/SVG$Unit;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = "Unit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/caverock/androidsvg/SVG$Unit;",
        ">;"
    }
.end annotation


# static fields
.field private static $VALUES:[Lcom/caverock/androidsvg/SVG$Unit;

.field public static final cm:Lcom/caverock/androidsvg/SVG$Unit;

.field public static final em:Lcom/caverock/androidsvg/SVG$Unit;

.field public static final ex:Lcom/caverock/androidsvg/SVG$Unit;

.field public static final in:Lcom/caverock/androidsvg/SVG$Unit;

.field public static final mm:Lcom/caverock/androidsvg/SVG$Unit;

.field public static final pc:Lcom/caverock/androidsvg/SVG$Unit;

.field public static final percent:Lcom/caverock/androidsvg/SVG$Unit;

.field public static final pt:Lcom/caverock/androidsvg/SVG$Unit;

.field public static final px:Lcom/caverock/androidsvg/SVG$Unit;


# direct methods
.method static final constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/caverock/androidsvg/SVG$Unit;

    const-string v1, "px"

    invoke-direct {v0, v1, v3}, Lcom/caverock/androidsvg/SVG$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    new-instance v0, Lcom/caverock/androidsvg/SVG$Unit;

    const-string v1, "em"

    invoke-direct {v0, v1, v4}, Lcom/caverock/androidsvg/SVG$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Unit;->em:Lcom/caverock/androidsvg/SVG$Unit;

    new-instance v0, Lcom/caverock/androidsvg/SVG$Unit;

    const-string v1, "ex"

    invoke-direct {v0, v1, v5}, Lcom/caverock/androidsvg/SVG$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Unit;->ex:Lcom/caverock/androidsvg/SVG$Unit;

    new-instance v0, Lcom/caverock/androidsvg/SVG$Unit;

    const-string v1, "in"

    invoke-direct {v0, v1, v6}, Lcom/caverock/androidsvg/SVG$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Unit;->in:Lcom/caverock/androidsvg/SVG$Unit;

    new-instance v0, Lcom/caverock/androidsvg/SVG$Unit;

    const-string v1, "cm"

    invoke-direct {v0, v1, v7}, Lcom/caverock/androidsvg/SVG$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Unit;->cm:Lcom/caverock/androidsvg/SVG$Unit;

    new-instance v0, Lcom/caverock/androidsvg/SVG$Unit;

    const-string v1, "mm"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Unit;->mm:Lcom/caverock/androidsvg/SVG$Unit;

    new-instance v0, Lcom/caverock/androidsvg/SVG$Unit;

    const-string v1, "pt"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    new-instance v0, Lcom/caverock/androidsvg/SVG$Unit;

    const-string v1, "pc"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Unit;->pc:Lcom/caverock/androidsvg/SVG$Unit;

    new-instance v0, Lcom/caverock/androidsvg/SVG$Unit;

    const-string v1, "percent"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    aput-object v1, v0, v3

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->em:Lcom/caverock/androidsvg/SVG$Unit;

    aput-object v1, v0, v4

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->ex:Lcom/caverock/androidsvg/SVG$Unit;

    aput-object v1, v0, v5

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->in:Lcom/caverock/androidsvg/SVG$Unit;

    aput-object v1, v0, v6

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->cm:Lcom/caverock/androidsvg/SVG$Unit;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->mm:Lcom/caverock/androidsvg/SVG$Unit;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->pc:Lcom/caverock/androidsvg/SVG$Unit;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    aput-object v2, v0, v1

    sput-object v0, Lcom/caverock/androidsvg/SVG$Unit;->$VALUES:[Lcom/caverock/androidsvg/SVG$Unit;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Unit;
    .registers 5

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->$VALUES:[Lcom/caverock/androidsvg/SVG$Unit;

    const/4 v0, 0x0

    :goto_3
    array-length v2, v1

    if-lt v0, v2, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_c
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Unit;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    return-object v2

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static final values()[Lcom/caverock/androidsvg/SVG$Unit;
    .registers 1

    sget-object v0, Lcom/caverock/androidsvg/SVG$Unit;->$VALUES:[Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v0}, [Lcom/caverock/androidsvg/SVG$Unit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/caverock/androidsvg/SVG$Unit;

    return-object v0
.end method
