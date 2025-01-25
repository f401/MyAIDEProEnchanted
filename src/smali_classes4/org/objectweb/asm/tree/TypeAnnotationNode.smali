.class public Lorg/objectweb/asm/tree/TypeAnnotationNode;
.super Lorg/objectweb/asm/tree/AnnotationNode;


# static fields
.field static class$org$objectweb$asm$tree$TypeAnnotationNode:Ljava/lang/Class;


# instance fields
.field public typePath:Lorg/objectweb/asm/TypePath;

.field public typeRef:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "org.objectweb.asm.tree.TypeAnnotationNode"

    invoke-static {v0}, Lorg/objectweb/asm/tree/TypeAnnotationNode;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;->class$org$objectweb$asm$tree$TypeAnnotationNode:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(IILorg/objectweb/asm/TypePath;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p4}, Lorg/objectweb/asm/tree/AnnotationNode;-><init>(ILjava/lang/String;)V

    iput p2, p0, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typeRef:I

    iput-object p3, p0, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typePath:Lorg/objectweb/asm/TypePath;

    return-void
.end method

.method public constructor <init>(ILorg/objectweb/asm/TypePath;Ljava/lang/String;)V
    .registers 6

    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/objectweb/asm/tree/TypeAnnotationNode;-><init>(IILorg/objectweb/asm/TypePath;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/tree/TypeAnnotationNode;->class$org$objectweb$asm$tree$TypeAnnotationNode:Ljava/lang/Class;

    if-eq v0, v1, :cond_13

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_13
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method
