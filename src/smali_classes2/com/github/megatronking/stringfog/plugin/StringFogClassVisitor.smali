.class Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;
.super Lorg/objectweb/asm/ClassVisitor;


# static fields
.field private static final IGNORE_ANNOTATION:Ljava/lang/String; = "Lcom/github/megatronking/stringfog/annotation/StringFogIgnore;"


# instance fields
.field private isClInitExists:Z

.field private mClassName:Ljava/lang/String;

.field private mFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/megatronking/stringfog/plugin/ClassStringField;",
            ">;"
        }
    .end annotation
.end field

.field private mFinalFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/megatronking/stringfog/plugin/ClassStringField;",
            ">;"
        }
    .end annotation
.end field

.field private mFogClassName:Ljava/lang/String;

.field private mIgnoreClass:Z

.field private final mKey:Ljava/lang/String;

.field private mMappingPrinter:Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;

.field private mStaticFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/megatronking/stringfog/plugin/ClassStringField;",
            ">;"
        }
    .end annotation
.end field

.field private mStaticFinalFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/megatronking/stringfog/plugin/ClassStringField;",
            ">;"
        }
    .end annotation
.end field

.field private mStringFogImpl:Lcom/github/megatronking/stringfog/IStringFog;


# direct methods
.method constructor <init>(Lcom/github/megatronking/stringfog/IStringFog;Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/ClassWriter;)V
    .registers 8

    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p5}, Lorg/objectweb/asm/ClassVisitor;-><init>(ILorg/objectweb/asm/ClassVisitor;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mStaticFinalFields:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mStaticFields:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mFinalFields:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mFields:Ljava/util/List;

    iput-object p1, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mStringFogImpl:Lcom/github/megatronking/stringfog/IStringFog;

    iput-object p2, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mMappingPrinter:Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;

    iput-object p4, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mKey:Ljava/lang/String;

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mFogClassName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000018(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->canEncrypted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000019(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->getJavaClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$L1000001(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mFogClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$L1000003(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mStaticFinalFields:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$L1000004(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mStaticFields:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$L1000005(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mFinalFields:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$L1000007(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;)Lcom/github/megatronking/stringfog/IStringFog;
    .registers 2

    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mStringFogImpl:Lcom/github/megatronking/stringfog/IStringFog;

    return-object v0
.end method

.method static synthetic access$L1000008(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;)Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;
    .registers 2

    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mMappingPrinter:Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;

    return-object v0
.end method

.method static synthetic access$L1000009(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$L1000010(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$S1000001(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mFogClassName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000003(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mStaticFinalFields:Ljava/util/List;

    return-void
.end method

.method static synthetic access$S1000004(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mStaticFields:Ljava/util/List;

    return-void
.end method

.method static synthetic access$S1000005(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mFinalFields:Ljava/util/List;

    return-void
.end method

.method static synthetic access$S1000007(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;Lcom/github/megatronking/stringfog/IStringFog;)V
    .registers 2

    iput-object p1, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mStringFogImpl:Lcom/github/megatronking/stringfog/IStringFog;

    return-void
.end method

.method static synthetic access$S1000008(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;)V
    .registers 2

    iput-object p1, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mMappingPrinter:Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;

    return-void
.end method

.method static synthetic access$S1000009(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mClassName:Ljava/lang/String;

    return-void
.end method

.method private canEncrypted(Ljava/lang/String;)Z
    .registers 4

    invoke-static {p1}, Lcom/github/megatronking/stringfog/plugin/utils/TextUtils;->isEmptyAfterTrim(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mStringFogImpl:Lcom/github/megatronking/stringfog/IStringFog;

    iget-object v1, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mKey:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/github/megatronking/stringfog/IStringFog;->overflow(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getJavaClassName()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mClassName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mClassName:Ljava/lang/String;

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iput-object p3, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mClassName:Ljava/lang/String;

    invoke-super/range {p0 .. p6}, Lorg/objectweb/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    sget-object v0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->IGNORE_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mIgnoreClass:Z

    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitEnd()V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    const/4 v8, 0x0

    iget-boolean v1, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mIgnoreClass:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->isClInitExists:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mStaticFinalFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x8

    const-string v2, "<clinit>"

    const-string v3, "()V"

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    move-object v5, v0

    check-cast v5, [Ljava/lang/String;

    move-object v0, p0

    invoke-super/range {v0 .. v5}, Lorg/objectweb/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/objectweb/asm/MethodVisitor;->visitCode()V

    iget-object v1, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mStaticFinalFields:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0xb1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v8}, Lorg/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    invoke-virtual {v0}, Lorg/objectweb/asm/MethodVisitor;->visitEnd()V

    :cond_1
    invoke-super {p0}, Lorg/objectweb/asm/ClassVisitor;->visitEnd()V

    return-void

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/github/megatronking/stringfog/plugin/ClassStringField;

    iget-object v1, v6, Lcom/github/megatronking/stringfog/plugin/ClassStringField;->value:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->canEncrypted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v6, Lcom/github/megatronking/stringfog/plugin/ClassStringField;->value:Ljava/lang/String;

    iget-object v2, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mStringFogImpl:Lcom/github/megatronking/stringfog/IStringFog;

    iget-object v3, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mKey:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Lcom/github/megatronking/stringfog/IStringFog;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mMappingPrinter:Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;

    invoke-direct {p0}, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->getJavaClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2}, Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;->output(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xb8

    iget-object v2, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mFogClassName:Ljava/lang/String;

    const-string v3, "decrypt"

    const-string v4, "(Ljava/lang/String;)Ljava/lang/String;"

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0xb3

    iget-object v2, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mClassName:Ljava/lang/String;

    iget-object v3, v6, Lcom/github/megatronking/stringfog/plugin/ClassStringField;->name:Ljava/lang/String;

    const-string v4, "Ljava/lang/String;"

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;
    .registers 12
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    sget-object v0, Lcom/github/megatronking/stringfog/plugin/ClassStringField;->STRING_DESC:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    iget-boolean v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mIgnoreClass:Z

    if-nez v0, :cond_4

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_3

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mStaticFinalFields:Ljava/util/List;

    new-instance v2, Lcom/github/megatronking/stringfog/plugin/ClassStringField;

    check-cast p5, Ljava/lang/String;

    invoke-direct {v2, p2, p5}, Lcom/github/megatronking/stringfog/plugin/ClassStringField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    check-cast v0, Ljava/lang/Object;

    :goto_0
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_0

    and-int/lit8 v2, p1, 0x10

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mStaticFields:Ljava/util/List;

    new-instance v3, Lcom/github/megatronking/stringfog/plugin/ClassStringField;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, p2, v0}, Lcom/github/megatronking/stringfog/plugin/ClassStringField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    check-cast v0, Ljava/lang/Object;

    :cond_0
    and-int/lit8 v2, p1, 0x8

    if-nez v2, :cond_1

    and-int/lit8 v2, p1, 0x10

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mFinalFields:Ljava/util/List;

    new-instance v3, Lcom/github/megatronking/stringfog/plugin/ClassStringField;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, p2, v0}, Lcom/github/megatronking/stringfog/plugin/ClassStringField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    check-cast v0, Ljava/lang/Object;

    :cond_1
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_2

    and-int/lit8 v2, p1, 0x10

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mFields:Ljava/util/List;

    new-instance v3, Lcom/github/megatronking/stringfog/plugin/ClassStringField;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, p2, v0}, Lcom/github/megatronking/stringfog/plugin/ClassStringField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    check-cast v1, Ljava/lang/Object;

    move-object v5, v1

    :goto_1
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-super/range {v0 .. v5}, Lorg/objectweb/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;

    move-result-object v0

    return-object v0

    :cond_2
    move-object v5, v0

    goto :goto_1

    :cond_3
    move-object v0, p5

    goto :goto_0

    :cond_4
    move-object v5, p5

    goto :goto_1
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;
    .registers 9
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/high16 v2, 0x50000

    invoke-super/range {p0 .. p5}, Lorg/objectweb/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-boolean v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->mIgnoreClass:Z

    if-nez v0, :cond_2

    const-string v0, "<clinit>"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;->isClInitExists:Z

    new-instance v0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000000;

    invoke-direct {v0, p0, v2, v1}, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000000;-><init>(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;ILorg/objectweb/asm/MethodVisitor;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "<init>"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000001;

    invoke-direct {v0, p0, v2, v1}, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000001;-><init>(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;ILorg/objectweb/asm/MethodVisitor;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000002;

    invoke-direct {v0, p0, v2, v1}, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor$100000002;-><init>(Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;ILorg/objectweb/asm/MethodVisitor;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
