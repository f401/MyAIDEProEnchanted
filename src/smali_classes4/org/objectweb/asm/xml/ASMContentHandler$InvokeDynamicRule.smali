.class final Lorg/objectweb/asm/xml/ASMContentHandler$InvokeDynamicRule;
.super Lorg/objectweb/asm/xml/ASMContentHandler$Rule;


# instance fields
.field final this$0:Lorg/objectweb/asm/xml/ASMContentHandler;


# direct methods
.method constructor <init>(Lorg/objectweb/asm/xml/ASMContentHandler;)V
    .registers 2

    iput-object p1, p0, Lorg/objectweb/asm/xml/ASMContentHandler$InvokeDynamicRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    invoke-direct {p0, p1}, Lorg/objectweb/asm/xml/ASMContentHandler$Rule;-><init>(Lorg/objectweb/asm/xml/ASMContentHandler;)V

    return-void
.end method


# virtual methods
.method public final begin(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/objectweb/asm/xml/ASMContentHandler$InvokeDynamicRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    const-string v1, "name"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/xml/ASMContentHandler;->push(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/xml/ASMContentHandler$InvokeDynamicRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    const-string v1, "desc"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/xml/ASMContentHandler;->push(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/xml/ASMContentHandler$InvokeDynamicRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    const-string v1, "bsm"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/xml/ASMContentHandler$InvokeDynamicRule;->decodeHandle(Ljava/lang/String;)Lorg/objectweb/asm/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/xml/ASMContentHandler;->push(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/xml/ASMContentHandler$InvokeDynamicRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/xml/ASMContentHandler;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public final end(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lorg/objectweb/asm/xml/ASMContentHandler$InvokeDynamicRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    invoke-virtual {v0}, Lorg/objectweb/asm/xml/ASMContentHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/objectweb/asm/xml/ASMContentHandler$InvokeDynamicRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    invoke-virtual {v1}, Lorg/objectweb/asm/xml/ASMContentHandler;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/objectweb/asm/Handle;

    iget-object v2, p0, Lorg/objectweb/asm/xml/ASMContentHandler$InvokeDynamicRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    invoke-virtual {v2}, Lorg/objectweb/asm/xml/ASMContentHandler;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/objectweb/asm/xml/ASMContentHandler$InvokeDynamicRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    invoke-virtual {v3}, Lorg/objectweb/asm/xml/ASMContentHandler;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/objectweb/asm/xml/ASMContentHandler$InvokeDynamicRule;->getCodeVisitor()Lorg/objectweb/asm/MethodVisitor;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v3, v2, v1, v0}, Lorg/objectweb/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V

    return-void
.end method
