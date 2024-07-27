.class public Lorg/codehaus/groovy/ast/ClassNode;
.super Lorg/codehaus/groovy/ast/AnnotatedNode;

# interfaces
.implements Lgroovyjarjarasm/asm/Opcodes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/groovy/ast/ClassNode$MapOfLists;
    }
.end annotation


# static fields
.field public static final EQ:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final tp:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final u7:[Lorg/codehaus/groovy/ast/ClassNode;


# instance fields
.field protected BT:Ljava/lang/Class;

.field private J0:I

.field private J8:[Lorg/codehaus/groovy/ast/ClassNode;

.field private KD:Z

.field private Mr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/groovy/ast/FieldNode;",
            ">;"
        }
    .end annotation
.end field

.field private P8:Lorg/codehaus/groovy/ast/ClassNode;

.field private QX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/groovy/ast/ConstructorNode;",
            ">;"
        }
    .end annotation
.end field

.field private SI:Z

.field private U2:Lorg/codehaus/groovy/ast/ModuleNode;

.field private Ws:[Lorg/codehaus/groovy/ast/MixinNode;

.field private XL:Lorg/codehaus/groovy/ast/ClassNode$MapOfLists;

.field private a8:Lorg/codehaus/groovy/ast/CompileUnit;

.field private aM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/groovy/ast/MethodNode;",
            ">;"
        }
    .end annotation
.end field

.field private ei:Lorg/codehaus/groovy/ast/ClassNode;

.field private er:Lorg/codehaus/groovy/ast/ClassNode;

.field protected gW:Ljava/lang/Object;

.field private j3:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/codehaus/groovy/ast/FieldNode;",
            ">;"
        }
    .end annotation
.end field

.field private lg:Z

.field private nw:[Lorg/codehaus/groovy/ast/GenericsType;

.field private rN:Z

.field private ro:Lorg/codehaus/groovy/ast/MethodNode;

.field private vy:Z

.field private we:Ljava/lang/String;

.field protected yS:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/codehaus/groovy/ast/ClassNode;

    sput-object v0, Lorg/codehaus/groovy/ast/ClassNode;->u7:[Lorg/codehaus/groovy/ast/ClassNode;

    new-instance v0, Lorg/codehaus/groovy/ast/ClassNode;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Lorg/codehaus/groovy/ast/ClassNode;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/codehaus/groovy/ast/ClassNode;->tp:Lorg/codehaus/groovy/ast/ClassNode;

    new-instance v0, Lorg/codehaus/groovy/ast/ClassNode;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Lorg/codehaus/groovy/ast/ClassNode;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/codehaus/groovy/ast/ClassNode;->EQ:Lorg/codehaus/groovy/ast/ClassNode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 9

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    sget-object v5, Lorg/codehaus/groovy/ast/MixinNode;->cn:[Lorg/codehaus/groovy/ast/MixinNode;

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/groovy/ast/ClassNode;-><init>(Ljava/lang/String;ILorg/codehaus/groovy/ast/ClassNode;[Lorg/codehaus/groovy/ast/ClassNode;[Lorg/codehaus/groovy/ast/MixinNode;)V

    iput-object p1, p0, Lorg/codehaus/groovy/ast/ClassNode;->BT:Ljava/lang/Class;

    iput-boolean v6, p0, Lorg/codehaus/groovy/ast/ClassNode;->vy:Z

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->Zo()Lorg/codehaus/groovy/ast/CompileUnit;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lorg/codehaus/groovy/ast/CompileUnit;->j6(Lorg/codehaus/groovy/ast/ClassNode;)V

    :cond_0
    iput-boolean v6, p0, Lorg/codehaus/groovy/ast/ClassNode;->yS:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Lorg/codehaus/groovy/ast/ClassNode;)V
    .registers 4

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/ast/ClassNode;-><init>(Ljava/lang/Class;)V

    iput-object p2, p0, Lorg/codehaus/groovy/ast/ClassNode;->P8:Lorg/codehaus/groovy/ast/ClassNode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->yS:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/codehaus/groovy/ast/ClassNode;)V
    .registers 10

    sget-object v4, Lorg/codehaus/groovy/ast/ClassNode;->u7:[Lorg/codehaus/groovy/ast/ClassNode;

    sget-object v5, Lorg/codehaus/groovy/ast/MixinNode;->cn:[Lorg/codehaus/groovy/ast/MixinNode;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/groovy/ast/ClassNode;-><init>(Ljava/lang/String;ILorg/codehaus/groovy/ast/ClassNode;[Lorg/codehaus/groovy/ast/ClassNode;[Lorg/codehaus/groovy/ast/MixinNode;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/codehaus/groovy/ast/ClassNode;[Lorg/codehaus/groovy/ast/ClassNode;[Lorg/codehaus/groovy/ast/MixinNode;)V
    .registers 13

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/codehaus/groovy/ast/AnnotatedNode;-><init>()V

    iput-boolean v1, p0, Lorg/codehaus/groovy/ast/ClassNode;->lg:Z

    iput-boolean v1, p0, Lorg/codehaus/groovy/ast/ClassNode;->rN:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->gW:Ljava/lang/Object;

    iput-boolean v2, p0, Lorg/codehaus/groovy/ast/ClassNode;->vy:Z

    iput-object v6, p0, Lorg/codehaus/groovy/ast/ClassNode;->P8:Lorg/codehaus/groovy/ast/ClassNode;

    iput-object v6, p0, Lorg/codehaus/groovy/ast/ClassNode;->ei:Lorg/codehaus/groovy/ast/ClassNode;

    iput-object v6, p0, Lorg/codehaus/groovy/ast/ClassNode;->nw:[Lorg/codehaus/groovy/ast/GenericsType;

    iput-boolean v1, p0, Lorg/codehaus/groovy/ast/ClassNode;->SI:Z

    iput-object v6, p0, Lorg/codehaus/groovy/ast/ClassNode;->ro:Lorg/codehaus/groovy/ast/MethodNode;

    iput-object p1, p0, Lorg/codehaus/groovy/ast/ClassNode;->we:Ljava/lang/String;

    iput p2, p0, Lorg/codehaus/groovy/ast/ClassNode;->J0:I

    iput-object p3, p0, Lorg/codehaus/groovy/ast/ClassNode;->er:Lorg/codehaus/groovy/ast/ClassNode;

    iput-object p4, p0, Lorg/codehaus/groovy/ast/ClassNode;->J8:[Lorg/codehaus/groovy/ast/ClassNode;

    iput-object p5, p0, Lorg/codehaus/groovy/ast/ClassNode;->Ws:[Lorg/codehaus/groovy/ast/MixinNode;

    iput-boolean v2, p0, Lorg/codehaus/groovy/ast/ClassNode;->yS:Z

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lorg/codehaus/groovy/ast/ClassNode;->ei()Z

    move-result v0

    iput-boolean v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->SI:Z

    :cond_0
    iget-boolean v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->SI:Z

    if-nez v0, :cond_2

    if-eqz p4, :cond_2

    array-length v4, p4

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, p4, v3

    iget-boolean v5, p0, Lorg/codehaus/groovy/ast/ClassNode;->SI:Z

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/ClassNode;->ei()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->SI:Z

    iget-boolean v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->SI:Z

    if-eqz v0, :cond_4

    :cond_2
    new-instance v0, Lorg/codehaus/groovy/ast/ClassNode$MapOfLists;

    invoke-direct {v0, v6}, Lorg/codehaus/groovy/ast/ClassNode$MapOfLists;-><init>(Lorg/codehaus/groovy/ast/ClassNode$1;)V

    iput-object v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->XL:Lorg/codehaus/groovy/ast/ClassNode$MapOfLists;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->aM:Ljava/util/List;

    return-void

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/codehaus/groovy/ast/ClassNode;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Lorg/codehaus/groovy/ast/ClassHelper;->Hw:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-direct {p0, v0, v1, v2}, Lorg/codehaus/groovy/ast/ClassNode;-><init>(Ljava/lang/String;ILorg/codehaus/groovy/ast/ClassNode;)V

    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->P8:Lorg/codehaus/groovy/ast/ClassNode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->yS:Z

    return-void
.end method

.method private KD()V
    .registers 4

    iget-object v1, p0, Lorg/codehaus/groovy/ast/ClassNode;->gW:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->ei:Lorg/codehaus/groovy/ast/ClassNode;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->vy:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lorg/codehaus/groovy/vmplugin/VMPluginFactory;->j6()Lorg/codehaus/groovy/vmplugin/VMPlugin;

    move-result-object v0

    iget-object v2, p0, Lorg/codehaus/groovy/ast/ClassNode;->a8:Lorg/codehaus/groovy/ast/CompileUnit;

    invoke-interface {v0, v2, p0}, Lorg/codehaus/groovy/vmplugin/VMPlugin;->j6(Lorg/codehaus/groovy/ast/CompileUnit;Lorg/codehaus/groovy/ast/ClassNode;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->vy:Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    new-instance v0, Lorg/codehaus/groovy/GroovyBugError;

    const-string v2, "lazyClassInit called on a proxy ClassNode, that must not happen.A redirect() call is missing somewhere!"

    invoke-direct {v0, v2}, Lorg/codehaus/groovy/GroovyBugError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method private j6(Lorg/codehaus/groovy/ast/GenericsType;Z)Ljava/lang/String;
    .registers 7

    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/GenericsType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/GenericsType;->VH()[Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " extends "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/GenericsType;->VH()[Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/GenericsType;->VH()[Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Lorg/codehaus/groovy/ast/ClassNode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/GenericsType;->VH()[Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " & "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Lorg/codehaus/groovy/ast/ClassNode;->Hw(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/GenericsType;->Zo()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/GenericsType;->Zo()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/codehaus/groovy/ast/ClassNode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " super "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_2
    return-object v0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " super "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method public BT()Z
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->EQ()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public DW(Lorg/codehaus/groovy/ast/ClassNode;)V
    .registers 4

    iget-boolean v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->yS:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object p1

    :cond_0
    if-ne p1, p0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lorg/codehaus/groovy/ast/ClassNode;->ei:Lorg/codehaus/groovy/ast/ClassNode;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tried to set a redirect for a primary ClassNode ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/codehaus/groovy/GroovyBugError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/codehaus/groovy/GroovyBugError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public DW(Z)V
    .registers 3

    iget-boolean v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->SI:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->SI:Z

    iput-boolean p1, p0, Lorg/codehaus/groovy/ast/ClassNode;->KD:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public EQ()I
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    iget v0, v0, Lorg/codehaus/groovy/ast/ClassNode;->J0:I

    return v0
.end method

.method public FH(Lorg/codehaus/groovy/ast/ClassNode;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/groovy/ast/ClassNode;->er:Lorg/codehaus/groovy/ast/ClassNode;

    return-void
.end method

.method public FH(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/codehaus/groovy/ast/ClassNode;->SI:Z

    return-void
.end method

.method public Hw(Z)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->yS()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/codehaus/groovy/ast/ClassNode;->P8:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-virtual {v1, p1}, Lorg/codehaus/groovy/ast/ClassNode;->Hw(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/codehaus/groovy/ast/ClassNode;->KD:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->XL()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-boolean v1, p0, Lorg/codehaus/groovy/ast/ClassNode;->KD:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/codehaus/groovy/ast/ClassNode;->nw:[Lorg/codehaus/groovy/ast/GenericsType;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " <"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lorg/codehaus/groovy/ast/ClassNode;->nw:[Lorg/codehaus/groovy/ast/GenericsType;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    if-eqz v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v2, p0, Lorg/codehaus/groovy/ast/ClassNode;->nw:[Lorg/codehaus/groovy/ast/GenericsType;

    aget-object v2, v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2, p1}, Lorg/codehaus/groovy/ast/ClassNode;->j6(Lorg/codehaus/groovy/ast/GenericsType;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    iget-object v1, p0, Lorg/codehaus/groovy/ast/ClassNode;->ei:Lorg/codehaus/groovy/ast/ClassNode;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/ClassNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public J0()Lorg/codehaus/groovy/ast/PackageNode;
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->we()Lorg/codehaus/groovy/ast/ModuleNode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->we()Lorg/codehaus/groovy/ast/ModuleNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/ModuleNode;->VH()Lorg/codehaus/groovy/ast/PackageNode;

    move-result-object v0

    goto :goto_0
.end method

.method public J8()Lorg/codehaus/groovy/ast/ClassNode;
    .registers 7

    const/4 v4, 0x0

    invoke-static {p0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Lorg/codehaus/groovy/ast/ClassNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/codehaus/groovy/ast/ClassNode;

    iget-object v1, p0, Lorg/codehaus/groovy/ast/ClassNode;->we:Ljava/lang/String;

    iget v2, p0, Lorg/codehaus/groovy/ast/ClassNode;->J0:I

    iget-object v3, p0, Lorg/codehaus/groovy/ast/ClassNode;->er:Lorg/codehaus/groovy/ast/ClassNode;

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/groovy/ast/ClassNode;-><init>(Ljava/lang/String;ILorg/codehaus/groovy/ast/ClassNode;[Lorg/codehaus/groovy/ast/ClassNode;[Lorg/codehaus/groovy/ast/MixinNode;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/codehaus/groovy/ast/ClassNode;->yS:Z

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/groovy/ast/ClassNode;->DW(Lorg/codehaus/groovy/ast/ClassNode;)V

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->yS()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/groovy/ast/ClassNode;->VH()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v1

    iput-object v1, v0, Lorg/codehaus/groovy/ast/ClassNode;->P8:Lorg/codehaus/groovy/ast/ClassNode;

    :cond_1
    move-object p0, v0

    goto :goto_0
.end method

.method public P8()Z
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    iget-boolean v0, v0, Lorg/codehaus/groovy/ast/ClassNode;->rN:Z

    return v0
.end method

.method public QX()Ljava/lang/Class;
    .registers 3

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    iget-object v0, v0, Lorg/codehaus/groovy/ast/ClassNode;->BT:Ljava/lang/Class;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    iget-object v0, v0, Lorg/codehaus/groovy/ast/ClassNode;->P8:Lorg/codehaus/groovy/ast/ClassNode;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/ClassNode;->vy()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/ClassNode;->nw()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/ast/ClassNode;->DW(Lorg/codehaus/groovy/ast/ClassNode;)V

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    iget-object v0, v0, Lorg/codehaus/groovy/ast/ClassNode;->BT:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClassNode#getTypeClass for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is called before the type class is set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/codehaus/groovy/GroovyBugError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/codehaus/groovy/GroovyBugError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public SI()Lorg/codehaus/groovy/ast/ClassNode;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->ei:Lorg/codehaus/groovy/ast/ClassNode;

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object p0

    goto :goto_0
.end method

.method public VH()Lorg/codehaus/groovy/ast/ClassNode;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->P8:Lorg/codehaus/groovy/ast/ClassNode;

    return-object v0
.end method

.method public Ws()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public XL()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->we:Ljava/lang/String;

    return-object v0
.end method

.method public Zo()Lorg/codehaus/groovy/ast/CompileUnit;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->ei:Lorg/codehaus/groovy/ast/ClassNode;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/ClassNode;->Zo()Lorg/codehaus/groovy/ast/CompileUnit;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->a8:Lorg/codehaus/groovy/ast/CompileUnit;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->U2:Lorg/codehaus/groovy/ast/ModuleNode;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/ModuleNode;->gn()Lorg/codehaus/groovy/ast/CompileUnit;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->a8:Lorg/codehaus/groovy/ast/CompileUnit;

    :cond_1
    iget-object v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->a8:Lorg/codehaus/groovy/ast/CompileUnit;

    goto :goto_0
.end method

.method public ei()Z
    .registers 2

    iget-boolean v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->SI:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->ei:Lorg/codehaus/groovy/ast/ClassNode;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/codehaus/groovy/ast/ClassNode;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/codehaus/groovy/ast/ClassNode;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/codehaus/groovy/ast/ClassNode;

    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->Ws()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->Ws()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public gW()Z
    .registers 2

    iget-boolean v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->KD:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    iget-object v0, v0, Lorg/codehaus/groovy/ast/ClassNode;->we:Ljava/lang/String;

    return-object v0
.end method

.method public gn()[Lorg/codehaus/groovy/ast/GenericsType;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->nw:[Lorg/codehaus/groovy/ast/GenericsType;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->ei:Lorg/codehaus/groovy/ast/ClassNode;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/ClassNode;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public j6(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/groovy/ast/MethodNode;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    iget-boolean v0, v0, Lorg/codehaus/groovy/ast/ClassNode;->vy:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    invoke-direct {v0}, Lorg/codehaus/groovy/ast/ClassNode;->KD()V

    :cond_0
    iget-object v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->ei:Lorg/codehaus/groovy/ast/ClassNode;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/codehaus/groovy/ast/ClassNode;->j6(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->XL:Lorg/codehaus/groovy/ast/ClassNode$MapOfLists;

    invoke-virtual {v0, p1}, Lorg/codehaus/groovy/ast/ClassNode$MapOfLists;->DW(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public j6(I[Lorg/codehaus/groovy/ast/Parameter;[Lorg/codehaus/groovy/ast/ClassNode;Lorg/codehaus/groovy/ast/stmt/Statement;)Lorg/codehaus/groovy/ast/ConstructorNode;
    .registers 6

    new-instance v0, Lorg/codehaus/groovy/ast/ConstructorNode;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/codehaus/groovy/ast/ConstructorNode;-><init>(I[Lorg/codehaus/groovy/ast/Parameter;[Lorg/codehaus/groovy/ast/ClassNode;Lorg/codehaus/groovy/ast/stmt/Statement;)V

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/ast/ClassNode;->j6(Lorg/codehaus/groovy/ast/ConstructorNode;)V

    return-object v0
.end method

.method public j6(Ljava/lang/String;ILorg/codehaus/groovy/ast/ClassNode;[Lorg/codehaus/groovy/ast/Parameter;[Lorg/codehaus/groovy/ast/ClassNode;Lorg/codehaus/groovy/ast/stmt/Statement;)Lorg/codehaus/groovy/ast/MethodNode;
    .registers 14

    invoke-virtual {p0, p1, p4}, Lorg/codehaus/groovy/ast/ClassNode;->j6(Ljava/lang/String;[Lorg/codehaus/groovy/ast/Parameter;)Lorg/codehaus/groovy/ast/MethodNode;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/codehaus/groovy/ast/MethodNode;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/groovy/ast/MethodNode;-><init>(Ljava/lang/String;ILorg/codehaus/groovy/ast/ClassNode;[Lorg/codehaus/groovy/ast/Parameter;[Lorg/codehaus/groovy/ast/ClassNode;Lorg/codehaus/groovy/ast/stmt/Statement;)V

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/ast/ClassNode;->j6(Lorg/codehaus/groovy/ast/MethodNode;)V

    goto :goto_0
.end method

.method public j6(Ljava/lang/String;[Lorg/codehaus/groovy/ast/Parameter;)Lorg/codehaus/groovy/ast/MethodNode;
    .registers 6

    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/ast/ClassNode;->j6(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/ast/MethodNode;

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/MethodNode;->u7()[Lorg/codehaus/groovy/ast/Parameter;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/codehaus/groovy/ast/ClassNode;->j6([Lorg/codehaus/groovy/ast/Parameter;[Lorg/codehaus/groovy/ast/Parameter;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j6(Lorg/codehaus/groovy/ast/ConstructorNode;)V
    .registers 4

    invoke-virtual {p1, p0}, Lorg/codehaus/groovy/ast/AnnotatedNode;->j6(Lorg/codehaus/groovy/ast/ClassNode;)V

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    iget-object v1, v0, Lorg/codehaus/groovy/ast/ClassNode;->QX:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/codehaus/groovy/ast/ClassNode;->QX:Ljava/util/List;

    :cond_0
    iget-object v0, v0, Lorg/codehaus/groovy/ast/ClassNode;->QX:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j6(Lorg/codehaus/groovy/ast/FieldNode;)V
    .registers 4

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/codehaus/groovy/ast/AnnotatedNode;->j6(Lorg/codehaus/groovy/ast/ClassNode;)V

    invoke-virtual {p1, v0}, Lorg/codehaus/groovy/ast/FieldNode;->DW(Lorg/codehaus/groovy/ast/ClassNode;)V

    iget-object v1, v0, Lorg/codehaus/groovy/ast/ClassNode;->j3:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, v0, Lorg/codehaus/groovy/ast/ClassNode;->j3:Ljava/util/LinkedList;

    :cond_0
    iget-object v1, v0, Lorg/codehaus/groovy/ast/ClassNode;->Mr:Ljava/util/Map;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lorg/codehaus/groovy/ast/ClassNode;->Mr:Ljava/util/Map;

    :cond_1
    iget-object v1, v0, Lorg/codehaus/groovy/ast/ClassNode;->j3:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lorg/codehaus/groovy/ast/ClassNode;->Mr:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/FieldNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public j6(Lorg/codehaus/groovy/ast/MethodNode;)V
    .registers 4

    invoke-virtual {p1, p0}, Lorg/codehaus/groovy/ast/AnnotatedNode;->j6(Lorg/codehaus/groovy/ast/ClassNode;)V

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    iget-object v0, v0, Lorg/codehaus/groovy/ast/ClassNode;->aM:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    iget-object v0, v0, Lorg/codehaus/groovy/ast/ClassNode;->XL:Lorg/codehaus/groovy/ast/ClassNode$MapOfLists;

    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/MethodNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/groovy/ast/ClassNode$MapOfLists;->j6(Ljava/lang/Object;Lorg/codehaus/groovy/ast/MethodNode;)V

    return-void
.end method

.method public j6([Lorg/codehaus/groovy/ast/ClassNode;)V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->ei:Lorg/codehaus/groovy/ast/ClassNode;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/codehaus/groovy/ast/ClassNode;->j6([Lorg/codehaus/groovy/ast/ClassNode;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lorg/codehaus/groovy/ast/ClassNode;->J8:[Lorg/codehaus/groovy/ast/ClassNode;

    goto :goto_0
.end method

.method public j6([Lorg/codehaus/groovy/ast/GenericsType;)V
    .registers 3

    iget-boolean v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->SI:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->SI:Z

    iput-object p1, p0, Lorg/codehaus/groovy/ast/ClassNode;->nw:[Lorg/codehaus/groovy/ast/GenericsType;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected j6([Lorg/codehaus/groovy/ast/Parameter;[Lorg/codehaus/groovy/ast/Parameter;)Z
    .registers 7

    const/4 v1, 0x0

    array-length v0, p1

    array-length v2, p2

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lorg/codehaus/groovy/ast/Parameter;->getType()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v2

    aget-object v3, p2, v0

    invoke-virtual {v3}, Lorg/codehaus/groovy/ast/Parameter;->getType()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/codehaus/groovy/ast/ClassNode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public nw()Lorg/codehaus/groovy/ast/ClassNode;
    .registers 4

    iget-object v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->ei:Lorg/codehaus/groovy/ast/ClassNode;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/ClassNode;->nw()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    iput-object p0, v0, Lorg/codehaus/groovy/ast/ClassNode;->P8:Lorg/codehaus/groovy/ast/ClassNode;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/codehaus/groovy/ast/ClassNode;->BT:Ljava/lang/Class;

    if-eqz v1, :cond_1

    new-instance v0, Lorg/codehaus/groovy/ast/ClassNode;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/codehaus/groovy/ast/ClassNode;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/ast/ClassNode;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/codehaus/groovy/ast/ClassNode;

    invoke-direct {v0, p0}, Lorg/codehaus/groovy/ast/ClassNode;-><init>(Lorg/codehaus/groovy/ast/ClassNode;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/ast/ClassNode;->Hw(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tp()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/groovy/ast/MethodNode;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    iget-boolean v0, v0, Lorg/codehaus/groovy/ast/ClassNode;->vy:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    invoke-direct {v0}, Lorg/codehaus/groovy/ast/ClassNode;->KD()V

    :cond_0
    iget-object v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->ei:Lorg/codehaus/groovy/ast/ClassNode;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/ClassNode;->tp()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->aM:Ljava/util/List;

    goto :goto_0
.end method

.method public u7()[Lorg/codehaus/groovy/ast/ClassNode;
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    iget-boolean v0, v0, Lorg/codehaus/groovy/ast/ClassNode;->vy:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    invoke-direct {v0}, Lorg/codehaus/groovy/ast/ClassNode;->KD()V

    :cond_0
    iget-object v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->ei:Lorg/codehaus/groovy/ast/ClassNode;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/ClassNode;->u7()[Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->J8:[Lorg/codehaus/groovy/ast/ClassNode;

    goto :goto_0
.end method

.method public vy()Z
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    iget-object v0, v0, Lorg/codehaus/groovy/ast/ClassNode;->BT:Ljava/lang/Class;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->P8:Lorg/codehaus/groovy/ast/ClassNode;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/ClassNode;->vy()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public we()Lorg/codehaus/groovy/ast/ModuleNode;
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    iget-object v0, v0, Lorg/codehaus/groovy/ast/ClassNode;->U2:Lorg/codehaus/groovy/ast/ModuleNode;

    return-object v0
.end method

.method public yS()Z
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/ClassNode;->P8:Lorg/codehaus/groovy/ast/ClassNode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
