.class public Lorg/objectweb/asm/tree/InnerClassNode;
.super Ljava/lang/Object;


# instance fields
.field public access:I

.field public innerName:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public outerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/objectweb/asm/tree/InnerClassNode;->name:Ljava/lang/String;

    iput-object p2, p0, Lorg/objectweb/asm/tree/InnerClassNode;->outerName:Ljava/lang/String;

    iput-object p3, p0, Lorg/objectweb/asm/tree/InnerClassNode;->innerName:Ljava/lang/String;

    iput p4, p0, Lorg/objectweb/asm/tree/InnerClassNode;->access:I

    return-void
.end method


# virtual methods
.method public accept(Lorg/objectweb/asm/ClassVisitor;)V
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/tree/InnerClassNode;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/objectweb/asm/tree/InnerClassNode;->outerName:Ljava/lang/String;

    iget-object v2, p0, Lorg/objectweb/asm/tree/InnerClassNode;->innerName:Ljava/lang/String;

    iget v3, p0, Lorg/objectweb/asm/tree/InnerClassNode;->access:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/objectweb/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
