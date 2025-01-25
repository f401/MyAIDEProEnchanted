.class public Lorg/objectweb/asm/commons/SerialVersionUIDAdder;
.super Lorg/objectweb/asm/ClassVisitor;


# static fields
.field static class$org$objectweb$asm$commons$SerialVersionUIDAdder:Ljava/lang/Class;


# instance fields
.field private access:I

.field private computeSVUID:Z

.field private hasSVUID:Z

.field private hasStaticInitializer:Z

.field private interfaces:[Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private svuidConstructors:Ljava/util/Collection;

.field private svuidFields:Ljava/util/Collection;

.field private svuidMethods:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "org.objectweb.asm.commons.SerialVersionUIDAdder"

    invoke-static {v0}, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->class$org$objectweb$asm$commons$SerialVersionUIDAdder:Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>(ILorg/objectweb/asm/ClassVisitor;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/objectweb/asm/ClassVisitor;-><init>(ILorg/objectweb/asm/ClassVisitor;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->svuidFields:Ljava/util/Collection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->svuidConstructors:Ljava/util/Collection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->svuidMethods:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/ClassVisitor;)V
    .registers 4

    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1}, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;-><init>(ILorg/objectweb/asm/ClassVisitor;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->class$org$objectweb$asm$commons$SerialVersionUIDAdder:Ljava/lang/Class;

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

.method private static writeItems(Ljava/util/Collection;Ljava/io/DataOutput;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v0, v3, [Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_11
    if-ge v2, v3, :cond_3b

    aget-object v1, v0, v2

    iget-object v1, v1, Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;->name:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    aget-object v1, v0, v2

    iget v1, v1, Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;->access:I

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    if-eqz p2, :cond_36

    aget-object v1, v0, v2

    iget-object v1, v1, Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;->desc:Ljava/lang/String;

    const/16 v4, 0x2f

    const/16 v5, 0x2e

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    :goto_2f
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_11

    :cond_36
    aget-object v1, v0, v2

    iget-object v1, v1, Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;->desc:Ljava/lang/String;

    goto :goto_2f

    :cond_3b
    return-void
.end method


# virtual methods
.method protected addSVUID(J)V
    .registers 10

    const/16 v1, 0x18

    const-string v2, "serialVersionUID"

    const-string v3, "J"

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p1, p2}, Ljava/lang/Long;-><init>(J)V

    move-object v0, p0

    invoke-super/range {v0 .. v5}, Lorg/objectweb/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lorg/objectweb/asm/FieldVisitor;->visitEnd()V

    :cond_16
    return-void
.end method

.method protected computeSHAdigest([B)[B
    .registers 4

    :try_start_0
    const-string v0, "SHA"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    return-object v0

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected computeSVUID()J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v8, 0x8

    :try_start_3
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_8a

    :try_start_d
    iget-object v3, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->name:Ljava/lang/String;

    const/16 v4, 0x2f

    const/16 v5, 0x2e

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget v3, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->access:I

    and-int/lit16 v3, v3, 0x611

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v3, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->interfaces:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    :goto_26
    iget-object v3, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->interfaces:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_3d

    iget-object v3, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->interfaces:[Ljava/lang/String;

    aget-object v3, v3, v0

    const/16 v4, 0x2f

    const/16 v5, 0x2e

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_3d
    iget-object v0, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->svuidFields:Ljava/util/Collection;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->writeItems(Ljava/util/Collection;Ljava/io/DataOutput;Z)V

    iget-boolean v0, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->hasStaticInitializer:Z

    if-eqz v0, :cond_56

    const-string v0, "<clinit>"

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const-string v0, "()V"

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_56
    iget-object v0, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->svuidConstructors:Ljava/util/Collection;

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->writeItems(Ljava/util/Collection;Ljava/io/DataOutput;Z)V

    iget-object v0, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->svuidMethods:Ljava/util/Collection;

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->writeItems(Ljava/util/Collection;Ljava/io/DataOutput;Z)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->computeSHAdigest([B)[B

    move-result-object v4

    array-length v0, v4

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I
    :try_end_73
    .catchall {:try_start_d .. :try_end_73} :catchall_92

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v2, 0x0

    :goto_78
    if-ltz v0, :cond_84

    shl-long/2addr v2, v8

    aget-byte v5, v4, v0

    and-int/lit16 v5, v5, 0xff

    int-to-long v6, v5

    or-long/2addr v2, v6

    add-int/lit8 v0, v0, -0x1

    goto :goto_78

    :cond_84
    if-eqz v1, :cond_89

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_89
    return-wide v2

    :catchall_8a
    move-exception v0

    const/4 v1, 0x0

    :goto_8c
    if-eqz v1, :cond_91

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_91
    throw v0

    :catchall_92
    move-exception v0

    goto :goto_8c
.end method

.method public hasSVUID()Z
    .registers 2

    iget-boolean v0, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->hasSVUID:Z

    return v0
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10

    const/4 v1, 0x0

    and-int/lit16 v0, p2, 0x200

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    :goto_6
    iput-boolean v0, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->computeSVUID:Z

    iget-boolean v0, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->computeSVUID:Z

    if-eqz v0, :cond_1b

    iput-object p3, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->name:Ljava/lang/String;

    iput p2, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->access:I

    array-length v0, p6

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->interfaces:[Ljava/lang/String;

    iget-object v0, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->interfaces:[Ljava/lang/String;

    array-length v2, p6

    invoke-static {p6, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1b
    invoke-super/range {p0 .. p6}, Lorg/objectweb/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_1f
    move v0, v1

    goto :goto_6
.end method

.method public visitEnd()V
    .registers 5

    iget-boolean v0, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->computeSVUID:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->hasSVUID:Z

    if-nez v0, :cond_f

    :try_start_8
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->computeSVUID()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->addSVUID(J)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_f} :catch_13

    :cond_f
    invoke-super {p0}, Lorg/objectweb/asm/ClassVisitor;->visitEnd()V

    return-void

    :catch_13
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error while computing SVUID for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;
    .registers 9

    iget-boolean v0, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->computeSVUID:Z

    if-eqz v0, :cond_26

    const-string v0, "serialVersionUID"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->computeSVUID:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->hasSVUID:Z

    :cond_12
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1a

    and-int/lit16 v0, p1, 0x88

    if-nez v0, :cond_26

    :cond_1a
    iget-object v0, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->svuidFields:Ljava/util/Collection;

    new-instance v1, Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;

    and-int/lit16 v2, p1, 0xdf

    invoke-direct {v1, p2, v2, p3}, Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_26
    invoke-super/range {p0 .. p5}, Lorg/objectweb/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->name:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iput p4, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->access:I

    :cond_e
    invoke-super {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;
    .registers 9

    iget-boolean v0, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->computeSVUID:Z

    if-eqz v0, :cond_27

    const-string v0, "<clinit>"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->hasStaticInitializer:Z

    :cond_f
    and-int/lit16 v0, p1, 0xd3f

    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_27

    const-string v1, "<init>"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->svuidConstructors:Ljava/util/Collection;

    new-instance v2, Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;

    invoke-direct {v2, p2, v0, p3}, Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_27
    :goto_27
    invoke-super/range {p0 .. p5}, Lorg/objectweb/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;

    move-result-object v0

    return-object v0

    :cond_2c
    const-string v1, "<clinit>"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    iget-object v1, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder;->svuidMethods:Ljava/util/Collection;

    new-instance v2, Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;

    invoke-direct {v2, p2, v0, p3}, Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_27
.end method
