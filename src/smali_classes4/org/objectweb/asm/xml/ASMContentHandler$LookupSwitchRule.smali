.class final Lorg/objectweb/asm/xml/ASMContentHandler$LookupSwitchRule;
.super Lorg/objectweb/asm/xml/ASMContentHandler$Rule;


# instance fields
.field final this$0:Lorg/objectweb/asm/xml/ASMContentHandler;


# direct methods
.method constructor <init>(Lorg/objectweb/asm/xml/ASMContentHandler;)V
    .registers 2

    iput-object p1, p0, Lorg/objectweb/asm/xml/ASMContentHandler$LookupSwitchRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    invoke-direct {p0, p1}, Lorg/objectweb/asm/xml/ASMContentHandler$Rule;-><init>(Lorg/objectweb/asm/xml/ASMContentHandler;)V

    return-void
.end method


# virtual methods
.method public final begin(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "dflt"

    const-string v2, "dflt"

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "labels"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "keys"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/objectweb/asm/xml/ASMContentHandler$LookupSwitchRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    invoke-virtual {v1, v0}, Lorg/objectweb/asm/xml/ASMContentHandler;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public final end(Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lorg/objectweb/asm/xml/ASMContentHandler$LookupSwitchRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    invoke-virtual {v0}, Lorg/objectweb/asm/xml/ASMContentHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "dflt"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/xml/ASMContentHandler$LookupSwitchRule;->getLabel(Ljava/lang/Object;)Lorg/objectweb/asm/Label;

    move-result-object v4

    const-string v1, "keys"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const-string v2, "labels"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/objectweb/asm/Label;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/objectweb/asm/Label;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v5, v2, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_36
    array-length v2, v5

    if-ge v3, v2, :cond_49

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v5, v3

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_36

    :cond_49
    invoke-virtual {p0}, Lorg/objectweb/asm/xml/ASMContentHandler$LookupSwitchRule;->getCodeVisitor()Lorg/objectweb/asm/MethodVisitor;

    move-result-object v1

    invoke-virtual {v1, v4, v5, v0}, Lorg/objectweb/asm/MethodVisitor;->visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V

    return-void
.end method
