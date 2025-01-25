.class public final synthetic Lorg/apache/commons/lang3/reflect/TypeUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/reflect/Typed;


# instance fields
.field public final f$0:Ljava/lang/reflect/Type;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Type;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final getType()Ljava/lang/reflect/Type;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->lambda$wrap$0(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method
