.class public interface synthetic Lcom/FR1ENDS/tools/asm/AsmAbstract;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/objectweb/asm/Opcodes;


# static fields
.field public static final RANDOM:Ljava/util/Random;


# direct methods
.method static final synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/FR1ENDS/tools/asm/AsmAbstract;->RANDOM:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public abstract synthetic modify(Lorg/objectweb/asm/tree/ClassNode;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/objectweb/asm/tree/ClassNode;",
            "Z)V"
        }
    .end annotation
.end method
