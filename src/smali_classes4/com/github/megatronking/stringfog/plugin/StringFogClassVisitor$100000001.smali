.class Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000001;
.super Lorg/objectweb/asm/MethodVisitor;


# instance fields
.field private final this$0:Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;


# direct methods
.method constructor <init>(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;ILorg/objectweb/asm/MethodVisitor;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lorg/objectweb/asm/MethodVisitor;-><init>(ILorg/objectweb/asm/MethodVisitor;)V

    iput-object p1, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000001;->this$0:Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;

    return-void
.end method

.method static access$0(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000001;)Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;
    .registers 2

    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000001;->this$0:Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;

    return-object v0
.end method


# virtual methods
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

    if-eqz p1, :cond_47

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_47

    iget-object v1, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000001;->this$0:Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->access$1000018(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000001;->this$0:Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;

    invoke-static {v0}, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->access$L1000007(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;)Lcom/github/megatronking/stringfog/IStringFog;

    move-result-object v0

    iget-object v1, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000001;->this$0:Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;

    invoke-static {v1}, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->access$L1000010(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/github/megatronking/stringfog/IStringFog;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000001;->this$0:Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;

    invoke-static {v1}, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->access$L1000008(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;)Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;

    move-result-object v1

    iget-object v2, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000001;->this$0:Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;

    invoke-static {v2}, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->access$1000019(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1, v0}, Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;->output(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xb8

    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000001;->this$0:Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;

    invoke-static {v0}, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->access$L1000001(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "decrypt"

    const-string v4, "(Ljava/lang/String;)Ljava/lang/String;"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-super/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_46
    return-void

    :cond_47
    invoke-super {p0, p1}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_46
.end method
