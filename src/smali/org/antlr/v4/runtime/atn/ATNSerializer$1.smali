.class Lorg/antlr/v4/runtime/atn/ATNSerializer$1;
.super Ljava/lang/Object;
.source "ATNSerializer.java"

# interfaces
.implements Lorg/antlr/v4/runtime/atn/ATNSerializer$CodePointSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/antlr/v4/runtime/atn/ATNSerializer;->serialize()Lorg/antlr/v4/runtime/misc/IntegerList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lorg/antlr/v4/runtime/atn/ATNSerializer;


# direct methods
.method constructor <init>(Lorg/antlr/v4/runtime/atn/ATNSerializer;)V
    .registers 2

    .line 179
    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer$1;->this$0:Lorg/antlr/v4/runtime/atn/ATNSerializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeCodePoint(Lorg/antlr/v4/runtime/misc/IntegerList;I)V
    .registers 3

    .line 182
    invoke-virtual {p1, p2}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    return-void
.end method
