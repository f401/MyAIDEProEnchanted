.class public abstract Lorg/antlr/v4/runtime/atn/SemanticContext$Operator;
.super Lorg/antlr/v4/runtime/atn/SemanticContext;
.source "SemanticContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/atn/SemanticContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Operator"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 188
    invoke-direct {p0}, Lorg/antlr/v4/runtime/atn/SemanticContext;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getOperands()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/antlr/v4/runtime/atn/SemanticContext;",
            ">;"
        }
    .end annotation
.end method
