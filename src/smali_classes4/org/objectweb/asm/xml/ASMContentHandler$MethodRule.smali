.class final Lorg/objectweb/asm/xml/ASMContentHandler$MethodRule;
.super Lorg/objectweb/asm/xml/ASMContentHandler$Rule;


# instance fields
.field final this$0:Lorg/objectweb/asm/xml/ASMContentHandler;


# direct methods
.method constructor <init>(Lorg/objectweb/asm/xml/ASMContentHandler;)V
    .registers 2

    iput-object p1, p0, Lorg/objectweb/asm/xml/ASMContentHandler$MethodRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    invoke-direct {p0, p1}, Lorg/objectweb/asm/xml/ASMContentHandler$Rule;-><init>(Lorg/objectweb/asm/xml/ASMContentHandler;)V

    return-void
.end method


# virtual methods
.method public final begin(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/xml/ASMContentHandler$MethodRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lorg/objectweb/asm/xml/ASMContentHandler;->labels:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "access"

    const-string v2, "access"

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "name"

    const-string v2, "name"

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "desc"

    const-string v2, "desc"

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "signature"

    const-string v2, "signature"

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "exceptions"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/objectweb/asm/xml/ASMContentHandler$MethodRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    invoke-virtual {v1, v0}, Lorg/objectweb/asm/xml/ASMContentHandler;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public final end(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/xml/ASMContentHandler$MethodRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    invoke-virtual {v0}, Lorg/objectweb/asm/xml/ASMContentHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0}, Lorg/objectweb/asm/MethodVisitor;->visitEnd()V

    iget-object v0, p0, Lorg/objectweb/asm/xml/ASMContentHandler$MethodRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/objectweb/asm/xml/ASMContentHandler;->labels:Ljava/util/Map;

    return-void
.end method
