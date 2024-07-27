.class Lcom/sun/tools/javac/jvm/ClassWriter$AttributeWriter;
.super Ljava/lang/Object;
.source "ClassWriter.java"

# interfaces
.implements Lcom/sun/tools/javac/code/Attribute$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/ClassWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AttributeWriter"
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/jvm/ClassWriter;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/jvm/ClassWriter;)V
    .registers 2

    .line 840
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lcom/sun/tools/javac/jvm/ClassWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitArray(Lcom/sun/tools/javac/code/Attribute$Array;)V
    .registers 6

    .line 900
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lcom/sun/tools/javac/jvm/ClassWriter;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 901
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lcom/sun/tools/javac/jvm/ClassWriter;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Attribute$Array;->values:[Lcom/sun/tools/javac/code/Attribute;

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 902
    iget-object v1, p1, Lcom/sun/tools/javac/code/Attribute$Array;->values:[Lcom/sun/tools/javac/code/Attribute;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 903
    invoke-virtual {v3, p0}, Lcom/sun/tools/javac/code/Attribute;->accept(Lcom/sun/tools/javac/code/Attribute$Visitor;)V

    .line 902
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 905
    :cond_0
    return-void
.end method

.method public visitClass(Lcom/sun/tools/javac/code/Attribute$Class;)V
    .registers 6

    .line 886
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lcom/sun/tools/javac/jvm/ClassWriter;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 887
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lcom/sun/tools/javac/jvm/ClassWriter;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lcom/sun/tools/javac/jvm/ClassWriter;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/ClassWriter;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lcom/sun/tools/javac/jvm/ClassWriter;

    iget-object v3, p1, Lcom/sun/tools/javac/code/Attribute$Class;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/jvm/ClassWriter;->typeSig(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 888
    return-void
.end method

.method public visitCompound(Lcom/sun/tools/javac/code/Attribute$Compound;)V
    .registers 4

    .line 891
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lcom/sun/tools/javac/jvm/ClassWriter;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 892
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lcom/sun/tools/javac/jvm/ClassWriter;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeCompoundAttribute(Lcom/sun/tools/javac/code/Attribute$Compound;)V

    .line 893
    return-void
.end method

.method public visitConstant(Lcom/sun/tools/javac/code/Attribute$Constant;)V
    .registers 5

    .line 842
    iget-object v0, p1, Lcom/sun/tools/javac/code/Attribute$Constant;->value:Ljava/lang/Object;

    .line 843
    iget-object v1, p1, Lcom/sun/tools/javac/code/Attribute$Constant;->type:Lcom/sun/tools/javac/code/Type;

    iget v1, v1, Lcom/sun/tools/javac/code/Type;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 874
    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Attribute$Constant;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 869
    :pswitch_1
    instance-of v1, v0, Ljava/lang/String;

    invoke-static {v1}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 870
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lcom/sun/tools/javac/jvm/ClassWriter;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v2, 0x73

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 871
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lcom/sun/tools/javac/jvm/ClassWriter;

    invoke-static {v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->access$000(Lcom/sun/tools/javac/jvm/ClassWriter;)Lcom/sun/tools/javac/util/Names;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    .line 876
    :goto_0
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lcom/sun/tools/javac/jvm/ClassWriter;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lcom/sun/tools/javac/jvm/ClassWriter;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/ClassWriter;->pool:Lcom/sun/tools/javac/jvm/Pool;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 877
    return-void

    .line 866
    :pswitch_2
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lcom/sun/tools/javac/jvm/ClassWriter;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto :goto_0

    .line 863
    :pswitch_3
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lcom/sun/tools/javac/jvm/ClassWriter;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v2, 0x44

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto :goto_0

    .line 860
    :pswitch_4
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lcom/sun/tools/javac/jvm/ClassWriter;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v2, 0x46

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto :goto_0

    .line 857
    :pswitch_5
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lcom/sun/tools/javac/jvm/ClassWriter;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v2, 0x4a

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto :goto_0

    .line 854
    :pswitch_6
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lcom/sun/tools/javac/jvm/ClassWriter;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v2, 0x49

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto :goto_0

    .line 851
    :pswitch_7
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lcom/sun/tools/javac/jvm/ClassWriter;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v2, 0x53

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto :goto_0

    .line 848
    :pswitch_8
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lcom/sun/tools/javac/jvm/ClassWriter;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v2, 0x43

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto :goto_0

    .line 845
    :pswitch_9
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lcom/sun/tools/javac/jvm/ClassWriter;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v2, 0x42

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto :goto_0

    .line 843
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public visitEnum(Lcom/sun/tools/javac/code/Attribute$Enum;)V
    .registers 6

    .line 880
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lcom/sun/tools/javac/jvm/ClassWriter;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 881
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lcom/sun/tools/javac/jvm/ClassWriter;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lcom/sun/tools/javac/jvm/ClassWriter;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/ClassWriter;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lcom/sun/tools/javac/jvm/ClassWriter;

    iget-object v3, p1, Lcom/sun/tools/javac/code/Attribute$Enum;->value:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/jvm/ClassWriter;->typeSig(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 882
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lcom/sun/tools/javac/jvm/ClassWriter;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter$AttributeWriter;->this$0:Lcom/sun/tools/javac/jvm/ClassWriter;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/ClassWriter;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Attribute$Enum;->value:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 883
    return-void
.end method

.method public visitError(Lcom/sun/tools/javac/code/Attribute$Error;)V
    .registers 3

    .line 896
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
