.class final Lorg/antlr/v4/runtime/atn/PredictionContext$1;
.super Ljava/lang/Object;
.source "PredictionContext.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/antlr/v4/runtime/atn/PredictionContext;->toDOTString(Lorg/antlr/v4/runtime/atn/PredictionContext;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/antlr/v4/runtime/atn/PredictionContext;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 492
    check-cast p1, Lorg/antlr/v4/runtime/atn/PredictionContext;

    check-cast p2, Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/atn/PredictionContext$1;->compare(Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/PredictionContext;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/PredictionContext;)I
    .registers 3

    .line 495
    iget p1, p1, Lorg/antlr/v4/runtime/atn/PredictionContext;->id:I

    iget p2, p2, Lorg/antlr/v4/runtime/atn/PredictionContext;->id:I

    sub-int/2addr p1, p2

    return p1
.end method
