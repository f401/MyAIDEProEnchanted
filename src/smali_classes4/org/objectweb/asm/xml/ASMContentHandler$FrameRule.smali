.class final Lorg/objectweb/asm/xml/ASMContentHandler$FrameRule;
.super Lorg/objectweb/asm/xml/ASMContentHandler$Rule;


# instance fields
.field final this$0:Lorg/objectweb/asm/xml/ASMContentHandler;


# direct methods
.method constructor <init>(Lorg/objectweb/asm/xml/ASMContentHandler;)V
    .registers 2

    iput-object p1, p0, Lorg/objectweb/asm/xml/ASMContentHandler$FrameRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    invoke-direct {p0, p1}, Lorg/objectweb/asm/xml/ASMContentHandler$Rule;-><init>(Lorg/objectweb/asm/xml/ASMContentHandler;)V

    return-void
.end method


# virtual methods
.method public begin(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 6

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "local"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "stack"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/objectweb/asm/xml/ASMContentHandler$FrameRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    const-string v2, "type"

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/objectweb/asm/xml/ASMContentHandler;->push(Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/objectweb/asm/xml/ASMContentHandler$FrameRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    const-string v0, "count"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_39

    const-string v0, "0"

    :goto_30
    invoke-virtual {v2, v0}, Lorg/objectweb/asm/xml/ASMContentHandler;->push(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/xml/ASMContentHandler$FrameRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/xml/ASMContentHandler;->push(Ljava/lang/Object;)V

    return-void

    :cond_39
    const-string v0, "count"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_30
.end method

.method public end(Ljava/lang/String;)V
    .registers 14

    const/4 v1, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/xml/ASMContentHandler$FrameRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    invoke-virtual {v0}, Lorg/objectweb/asm/xml/ASMContentHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "local"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "stack"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    iget-object v0, p0, Lorg/objectweb/asm/xml/ASMContentHandler$FrameRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    invoke-virtual {v0}, Lorg/objectweb/asm/xml/ASMContentHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v6, p0, Lorg/objectweb/asm/xml/ASMContentHandler$FrameRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    invoke-virtual {v6}, Lorg/objectweb/asm/xml/ASMContentHandler;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "NEW"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4c

    invoke-virtual {p0}, Lorg/objectweb/asm/xml/ASMContentHandler$FrameRule;->getCodeVisitor()Lorg/objectweb/asm/MethodVisitor;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :cond_4b
    :goto_4b
    return-void

    :cond_4c
    const-string v7, "FULL"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5c

    invoke-virtual {p0}, Lorg/objectweb/asm/xml/ASMContentHandler$FrameRule;->getCodeVisitor()Lorg/objectweb/asm/MethodVisitor;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_4b

    :cond_5c
    const-string v7, "APPEND"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_70

    invoke-virtual {p0}, Lorg/objectweb/asm/xml/ASMContentHandler$FrameRule;->getCodeVisitor()Lorg/objectweb/asm/MethodVisitor;

    move-result-object v4

    const/4 v5, 0x1

    move v6, v2

    move-object v7, v3

    move v8, v1

    invoke-virtual/range {v4 .. v9}, Lorg/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_4b

    :cond_70
    const-string v2, "CHOP"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    invoke-virtual {p0}, Lorg/objectweb/asm/xml/ASMContentHandler$FrameRule;->getCodeVisitor()Lorg/objectweb/asm/MethodVisitor;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v10, v1

    move-object v11, v9

    invoke-virtual/range {v6 .. v11}, Lorg/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_4b

    :cond_87
    const-string v0, "SAME"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-virtual {p0}, Lorg/objectweb/asm/xml/ASMContentHandler$FrameRule;->getCodeVisitor()Lorg/objectweb/asm/MethodVisitor;

    move-result-object v6

    const/4 v7, 0x3

    move v8, v1

    move v10, v1

    move-object v11, v9

    invoke-virtual/range {v6 .. v11}, Lorg/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_4b

    :cond_9b
    const-string v0, "SAME1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-virtual {p0}, Lorg/objectweb/asm/xml/ASMContentHandler$FrameRule;->getCodeVisitor()Lorg/objectweb/asm/MethodVisitor;

    move-result-object v6

    const/4 v7, 0x4

    move v8, v1

    move v10, v4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_4b
.end method
