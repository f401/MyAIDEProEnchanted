.class public final synthetic Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool$$ExternalSyntheticLambda1;->f$0:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool$$ExternalSyntheticLambda1;->f$0:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->lambda$toString$0$ConstantPool(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
