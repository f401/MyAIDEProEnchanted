.class enum Lcom/caverock/androidsvg/CSSParser$AttribOp;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400a
    name = "AttribOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/caverock/androidsvg/CSSParser$AttribOp;",
        ">;"
    }
.end annotation


# static fields
.field private static $VALUES:[Lcom/caverock/androidsvg/CSSParser$AttribOp;

.field public static final DASHMATCH:Lcom/caverock/androidsvg/CSSParser$AttribOp;

.field public static final EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

.field public static final EXISTS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

.field public static final INCLUDES:Lcom/caverock/androidsvg/CSSParser$AttribOp;


# direct methods
.method static final constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/caverock/androidsvg/CSSParser$AttribOp;

    const-string v1, "EXISTS"

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/CSSParser$AttribOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EXISTS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    new-instance v0, Lcom/caverock/androidsvg/CSSParser$AttribOp;

    const-string v1, "EQUALS"

    invoke-direct {v0, v1, v3}, Lcom/caverock/androidsvg/CSSParser$AttribOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    new-instance v0, Lcom/caverock/androidsvg/CSSParser$AttribOp;

    const-string v1, "INCLUDES"

    invoke-direct {v0, v1, v4}, Lcom/caverock/androidsvg/CSSParser$AttribOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$AttribOp;->INCLUDES:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    new-instance v0, Lcom/caverock/androidsvg/CSSParser$AttribOp;

    const-string v1, "DASHMATCH"

    invoke-direct {v0, v1, v5}, Lcom/caverock/androidsvg/CSSParser$AttribOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$AttribOp;->DASHMATCH:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/caverock/androidsvg/CSSParser$AttribOp;

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EXISTS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    aput-object v1, v0, v2

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    aput-object v1, v0, v3

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$AttribOp;->INCLUDES:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    aput-object v1, v0, v4

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$AttribOp;->DASHMATCH:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    aput-object v1, v0, v5

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$AttribOp;->$VALUES:[Lcom/caverock/androidsvg/CSSParser$AttribOp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$AttribOp;
    .registers 5

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$AttribOp;->$VALUES:[Lcom/caverock/androidsvg/CSSParser$AttribOp;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/caverock/androidsvg/CSSParser$AttribOp;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final values()[Lcom/caverock/androidsvg/CSSParser$AttribOp;
    .registers 1

    sget-object v0, Lcom/caverock/androidsvg/CSSParser$AttribOp;->$VALUES:[Lcom/caverock/androidsvg/CSSParser$AttribOp;

    invoke-virtual {v0}, [Lcom/caverock/androidsvg/CSSParser$AttribOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/caverock/androidsvg/CSSParser$AttribOp;

    return-object v0
.end method
