.class final Lcom/google/common/primitives/Doubles$DoubleConverter;
.super Lcom/google/common/base/Converter;
.source "Doubles.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Doubles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DoubleConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/base/Converter",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Double;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/primitives/Doubles$DoubleConverter;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 280
    new-instance v0, Lcom/google/common/primitives/Doubles$DoubleConverter;

    invoke-direct {v0}, Lcom/google/common/primitives/Doubles$DoubleConverter;-><init>()V

    sput-object v0, Lcom/google/common/primitives/Doubles$DoubleConverter;->INSTANCE:Lcom/google/common/primitives/Doubles$DoubleConverter;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 278
    invoke-direct {p0}, Lcom/google/common/base/Converter;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .line 298
    sget-object v0, Lcom/google/common/primitives/Doubles$DoubleConverter;->INSTANCE:Lcom/google/common/primitives/Doubles$DoubleConverter;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 278
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Doubles$DoubleConverter;->doBackward(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected doBackward(Ljava/lang/Double;)Ljava/lang/String;
    .registers 3

    .line 289
    invoke-virtual {p1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected doForward(Ljava/lang/String;)Ljava/lang/Double;
    .registers 3

    .line 284
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 278
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Doubles$DoubleConverter;->doForward(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 294
    const-string v0, "Doubles.stringConverter()"

    return-object v0
.end method
