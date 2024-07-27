.class Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000000;
.super Lorg/objectweb/asm/MethodVisitor;


# instance fields
.field private lastStashCst:Ljava/lang/String;

.field private final this$0:Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;


# direct methods
.method constructor <init>(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;ILorg/objectweb/asm/MethodVisitor;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lorg/objectweb/asm/MethodVisitor;-><init>(ILorg/objectweb/asm/MethodVisitor;)V

    iput-object p1, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000000;->this$0:Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;

    return-void
.end method

.method static access$0(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000000;)Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;
    .registers 2

    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000000;->this$0:Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;

    return-object v0
.end method


# virtual methods
.method public visitCode()V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-super {p0}, Lorg/objectweb/asm/MethodVisitor;->visitCode()V

    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000000;->this$0:Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;

    invoke-static {v0}, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->access$L1000003(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/github/megatronking/stringfog/plugin/ClassStringField;

    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000000;->this$0:Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;

    iget-object v1, v6, Lcom/github/megatronking/stringfog/plugin/ClassStringField;->value:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->access$1000018(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/github/megatronking/stringfog/plugin/ClassStringField;->value:Ljava/lang/String;

    iget-object v1, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000000;->this$0:Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;

    invoke-static {v1}, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->access$L1000007(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;)Lcom/github/megatronking/stringfog/IStringFog;

    move-result-object v1

    iget-object v2, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000000;->this$0:Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;

    invoke-static {v2}, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->access$L1000010(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/github/megatronking/stringfog/IStringFog;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000000;->this$0:Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;

    invoke-static {v2}, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->access$L1000008(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;)Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;

    move-result-object v2

    iget-object v3, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000000;->this$0:Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;

    invoke-static {v3}, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->access$1000019(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;->output(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xb8

    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000000;->this$0:Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;

    invoke-static {v0}, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->access$L1000001(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "decrypt"

    const-string v4, "(Ljava/lang/String;)Ljava/lang/String;"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-super/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0xb3

    iget-object v1, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000000;->this$0:Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;

    invoke-static {v1}, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->access$L1000009(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v6, Lcom/github/megatronking/stringfog/plugin/ClassStringField;->name:Ljava/lang/String;

    const-string v3, "Ljava/lang/String;"

    invoke-super {p0, v0, v1, v2, v3}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000000;->this$0:Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;

    invoke-static {v0}, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->access$L1000009(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000000;->lastStashCst:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000000;->this$0:Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;

    invoke-static {v0}, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->access$L1000004(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000000;->this$0:Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;

    invoke-static {v0}, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->access$L1000003(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    :goto_1
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000000;->lastStashCst:Ljava/lang/String;

    invoke-super {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/megatronking/stringfog/plugin/ClassStringField;

    iget-object v0, v0, Lcom/github/megatronking/stringfog/plugin/ClassStringField;->name:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/megatronking/stringfog/plugin/ClassStringField;

    iget-object v2, v0, Lcom/github/megatronking/stringfog/plugin/ClassStringField;->name:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/github/megatronking/stringfog/plugin/ClassStringField;->value:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v1, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000000;->lastStashCst:Ljava/lang/String;

    iput-object v1, v0, Lcom/github/megatronking/stringfog/plugin/ClassStringField;->value:Ljava/lang/String;

    goto :goto_1
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000000;->this$0:Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->access$1000018(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000000;->lastStashCst:Ljava/lang/String;

    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000000;->lastStashCst:Ljava/lang/String;

    iget-object v1, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000000;->this$0:Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;

    invoke-static {v1}, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->access$L1000007(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;)Lcom/github/megatronking/stringfog/IStringFog;

    move-result-object v1

    iget-object v2, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000000;->this$0:Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;

    invoke-static {v2}, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->access$L1000010(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/github/megatronking/stringfog/IStringFog;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000000;->this$0:Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;

    invoke-static {v2}, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->access$L1000008(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;)Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;

    move-result-object v2

    iget-object v3, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000000;->this$0:Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;

    invoke-static {v3}, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->access$1000019(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;->output(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xb8

    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000000;->this$0:Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;

    invoke-static {v0}, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->access$L1000001(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "decrypt"

    const-string v4, "(Ljava/lang/String;)Ljava/lang/String;"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-super/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000000;->lastStashCst:Ljava/lang/String;

    invoke-super {p0, p1}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_0
.end method
