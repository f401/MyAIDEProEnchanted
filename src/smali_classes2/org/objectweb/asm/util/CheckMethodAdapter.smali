.class public Lorg/objectweb/asm/util/CheckMethodAdapter;
.super Lorg/objectweb/asm/MethodVisitor;


# static fields
.field private static final TYPE:[I

.field static class$org$objectweb$asm$Label:Ljava/lang/Class;

.field static class$org$objectweb$asm$util$CheckMethodAdapter:Ljava/lang/Class;

.field private static labelStatusField:Ljava/lang/reflect/Field;


# instance fields
.field private access:I

.field private compressedFrames:I

.field private endCode:Z

.field private endMethod:Z

.field private expandedFrames:I

.field private handlers:Ljava/util/List;

.field private insnCount:I

.field private final labels:Ljava/util/Map;

.field private lastFrame:I

.field private startCode:Z

.field private usedLabels:Ljava/util/Set;

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lorg/objectweb/asm/util/CheckMethodAdapter;->_clinit_()V

    const-string v0, "BBBBBBBBBBBBBBBBCCIAADDDDDAAAAAAAAAAAAAAAAAAAABBBBBBBBDDDDDAAAAAAAAAAAAAAAAAAAABBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBJBBBBBBBBBBBBBBBBBBBBHHHHHHHHHHHHHHHHDKLBBBBBBFFFFGGGGAECEBBEEBBAMHHAA"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [I

    sput-object v0, Lorg/objectweb/asm/util/CheckMethodAdapter;->TYPE:[I

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/objectweb/asm/util/CheckMethodAdapter;->TYPE:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lorg/objectweb/asm/util/CheckMethodAdapter;->TYPE:[I

    const-string v2, "BBBBBBBBBBBBBBBBCCIAADDDDDAAAAAAAAAAAAAAAAAAAABBBBBBBBDDDDDAAAAAAAAAAAAAAAAAAAABBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBJBBBBBBBBBBBBBBBBBBBBHHHHHHHHHHHHHHHHDKLBBBBBBFFFFGGGGAECEBBEEBBAMHHAA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x41

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/MethodVisitor;Ljava/util/Map;)V
    .registers 14

    const/4 v5, 0x0

    new-instance v0, Lorg/objectweb/asm/util/CheckMethodAdapter$1;

    const/high16 v1, 0x50000

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/objectweb/asm/util/CheckMethodAdapter$1;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/objectweb/asm/MethodVisitor;)V

    invoke-direct {p0, v0, p5}, Lorg/objectweb/asm/util/CheckMethodAdapter;-><init>(Lorg/objectweb/asm/MethodVisitor;Ljava/util/Map;)V

    iput p1, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->access:I

    return-void
.end method

.method protected constructor <init>(ILorg/objectweb/asm/MethodVisitor;Ljava/util/Map;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;-><init>(ILorg/objectweb/asm/MethodVisitor;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->lastFrame:I

    iput-object p3, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->labels:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->usedLabels:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->handlers:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/MethodVisitor;)V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;-><init>(Lorg/objectweb/asm/MethodVisitor;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/MethodVisitor;Ljava/util/Map;)V
    .registers 5

    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1, p2}, Lorg/objectweb/asm/util/CheckMethodAdapter;-><init>(ILorg/objectweb/asm/MethodVisitor;Ljava/util/Map;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/util/CheckMethodAdapter;->class$org$objectweb$asm$util$CheckMethodAdapter:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private static _clinit_()V
    .registers 1

    const-string v0, "org.objectweb.asm.util.CheckMethodAdapter"

    invoke-static {v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/util/CheckMethodAdapter;->class$org$objectweb$asm$util$CheckMethodAdapter:Ljava/lang/Class;

    const-string v0, "org.objectweb.asm.Label"

    invoke-static {v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/util/CheckMethodAdapter;->class$org$objectweb$asm$Label:Ljava/lang/Class;

    return-void
.end method

.method static checkConstant(Ljava/lang/Object;)V
    .registers 4

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid constant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static checkDesc(Ljava/lang/String;IZ)I
    .registers 6

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type descriptor (must not be null or empty)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    if-eqz p2, :cond_2

    add-int/lit8 v0, p1, 0x1

    :goto_0
    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    add-int/lit8 v0, p1, 0x1

    goto :goto_0

    :pswitch_3
    add-int/lit8 v0, p1, 0x1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkDesc(Ljava/lang/String;IZ)I

    move-result v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    const/16 v0, 0x3b

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    sub-int v1, v0, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v1, v0, v2}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkInternalName(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static checkDesc(Ljava/lang/String;Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkDesc(Ljava/lang/String;IZ)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static checkIdentifier(Ljava/lang/String;IILjava/lang/String;)V
    .registers 7

    const/4 v1, -0x1

    if-eqz p0, :cond_0

    if-ne p2, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " (must not be null or empty)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-le p2, p1, :cond_0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " (must be a valid Java identifier): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-ne p2, v1, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_4
    add-int/lit8 v0, p1, 0x1

    :goto_0
    if-ge v0, p2, :cond_6

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " (must be a valid Java identifier): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method static checkIdentifier(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, p1}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkIdentifier(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method static checkInternalName(Ljava/lang/String;IILjava/lang/String;)V
    .registers 8

    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    :goto_0
    const/16 v0, 0x2f

    add-int/lit8 v2, p1, 0x1

    :try_start_0
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-eq v0, v3, :cond_1

    if-le v0, v1, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v2}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkIdentifier(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, v0, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " (must be a fully qualified class name in internal form): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v1, p2

    goto :goto_0
.end method

.method static checkInternalName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " (must not be null or empty)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_2

    invoke-static {p0, v2}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkDesc(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_2
    const/4 v0, -0x1

    invoke-static {p0, v2, v0, p1}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkInternalName(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method static checkMethodDesc(Ljava/lang/String;)V
    .registers 7

    const/16 v5, 0x29

    const/4 v4, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid method descriptor (must not be null or empty)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x28

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v5, :cond_7

    move v0, v1

    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x56

    if-ne v2, v3, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {p0, v0, v4}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkDesc(Ljava/lang/String;IZ)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_4

    :cond_6
    :goto_0
    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0, v1}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkDesc(Ljava/lang/String;IZ)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    return-void
.end method

.method static checkMethodIdentifier(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " (must not be null or empty)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const v1, 0xffff

    and-int/2addr v1, p0

    const/16 v2, 0x31

    if-lt v1, v2, :cond_3

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    const-string v1, ".;[/<>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " (must be a valid unqualified name): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " (must be a \'<init>\', \'<clinit>\' or a valid Java identifier): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " (must be \'<init>\' or \'<clinit>\' or a valid Java identifier): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method private static checkNonDebugLabel(Lorg/objectweb/asm/Label;)V
    .registers 3

    invoke-static {}, Lorg/objectweb/asm/util/CheckMethodAdapter;->getLabelStatusField()Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Labels used for debug info cannot be reused for control flow"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/Error;

    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method static checkOpcode(II)V
    .registers 5

    if-ltz p0, :cond_0

    const/16 v0, 0xc7

    if-gt p0, v0, :cond_0

    sget-object v0, Lorg/objectweb/asm/util/CheckMethodAdapter;->TYPE:[I

    aget v0, v0, p0

    if-eq v0, p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method static checkSignedByte(ILjava/lang/String;)V
    .registers 5

    const/16 v0, -0x80

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7f

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " (must be a signed byte): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method static checkSignedShort(ILjava/lang/String;)V
    .registers 5

    const/16 v0, -0x8000

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7fff

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " (must be a signed short): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method static checkUnqualifiedName(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    const v0, 0xffff

    and-int/2addr v0, p0

    const/16 v1, 0x31

    if-ge v0, v1, :cond_1

    invoke-static {p1, p2}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const-string v1, ".;[/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " (must be a valid unqualified name): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static checkUnsignedShort(ILjava/lang/String;)V
    .registers 5

    if-ltz p0, :cond_0

    const v0, 0xffff

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " (must be an unsigned short): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkStartCode()V

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkEndCode()V

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkOpcode(II)V

    const/16 v0, 0xb7

    if-ne p1, v0, :cond_0

    const-string v0, "<init>"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->version:I

    const-string v1, "name"

    invoke-static {v0, p3, v1}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkMethodIdentifier(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "owner"

    invoke-static {p2, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkInternalName(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkMethodDesc(Ljava/lang/String;)V

    const/16 v0, 0xb6

    if-ne p1, v0, :cond_2

    if-eqz p5, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "INVOKEVIRTUAL can\'t be used with interfaces"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v0, 0xb9

    if-ne p1, v0, :cond_3

    if-nez p5, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "INVOKEINTERFACE can\'t be used with classes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    iget v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->insnCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->insnCount:I

    return-void
.end method

.method private static getLabelField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 3

    :try_start_0
    sget-object v0, Lorg/objectweb/asm/util/CheckMethodAdapter;->class$org$objectweb$asm$Label:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getLabelStatusField()Ljava/lang/reflect/Field;
    .registers 1

    sget-object v0, Lorg/objectweb/asm/util/CheckMethodAdapter;->labelStatusField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    const-string v0, "a"

    invoke-static {v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->getLabelField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/util/CheckMethodAdapter;->labelStatusField:Ljava/lang/reflect/Field;

    sget-object v0, Lorg/objectweb/asm/util/CheckMethodAdapter;->labelStatusField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    const-string v0, "status"

    invoke-static {v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->getLabelField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/util/CheckMethodAdapter;->labelStatusField:Ljava/lang/reflect/Field;

    :cond_0
    sget-object v0, Lorg/objectweb/asm/util/CheckMethodAdapter;->labelStatusField:Ljava/lang/reflect/Field;

    return-object v0
.end method


# virtual methods
.method checkEndCode()V
    .registers 3

    iget-boolean v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->endCode:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot visit instructions after visitMaxs has been called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method checkEndMethod()V
    .registers 3

    iget-boolean v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->endMethod:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot visit elements after visitEnd has been called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method checkFrameValue(Ljava/lang/Object;)V
    .registers 5

    sget-object v0, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/objectweb/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/objectweb/asm/Opcodes;->NULL:Ljava/lang/Integer;

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/objectweb/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/String;

    const-string v0, "Invalid stack frame value"

    invoke-static {p1, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkInternalName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lorg/objectweb/asm/Label;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid stack frame value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->usedLabels:Ljava/util/Set;

    check-cast p1, Lorg/objectweb/asm/Label;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method checkLDCConstant(Ljava/lang/Object;)V
    .registers 8

    const/16 v5, 0x33

    const/16 v2, 0x9

    const v4, 0xffff

    const/16 v3, 0xb

    instance-of v0, p1, Lorg/objectweb/asm/Type;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/objectweb/asm/Type;

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    if-eq v0, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal LDC constant value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eq v0, v3, :cond_1

    iget v1, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->version:I

    and-int/2addr v1, v4

    const/16 v2, 0x31

    if-ge v1, v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ldc of a constant class requires at least version 1.5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ne v0, v3, :cond_6

    iget v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->version:I

    and-int/2addr v0, v4

    if-ge v0, v5, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ldc of a method type requires at least version 1.7"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    instance-of v0, p1, Lorg/objectweb/asm/Handle;

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->version:I

    and-int/2addr v0, v4

    if-ge v0, v5, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ldc of a handle requires at least version 1.7"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    check-cast p1, Lorg/objectweb/asm/Handle;

    invoke-virtual {p1}, Lorg/objectweb/asm/Handle;->getTag()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    if-le v0, v2, :cond_6

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "invalid handle tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static {p1}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkConstant(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method checkLabel(Lorg/objectweb/asm/Label;ZLjava/lang/String;)V
    .registers 7

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " (must not be null)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->labels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " (must be visited first)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method checkStartCode()V
    .registers 3

    iget-boolean v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->startCode:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot visit instructions before visitCode has been called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 5

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkEndMethod()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkDesc(Ljava/lang/String;Z)V

    new-instance v0, Lorg/objectweb/asm/util/CheckAnnotationAdapter;

    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/objectweb/asm/util/CheckAnnotationAdapter;-><init>(Lorg/objectweb/asm/AnnotationVisitor;)V

    return-object v0
.end method

.method public visitAnnotationDefault()Lorg/objectweb/asm/AnnotationVisitor;
    .registers 4

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkEndMethod()V

    new-instance v0, Lorg/objectweb/asm/util/CheckAnnotationAdapter;

    invoke-super {p0}, Lorg/objectweb/asm/MethodVisitor;->visitAnnotationDefault()Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/util/CheckAnnotationAdapter;-><init>(Lorg/objectweb/asm/AnnotationVisitor;Z)V

    return-object v0
.end method

.method public visitAttribute(Lorg/objectweb/asm/Attribute;)V
    .registers 4

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkEndMethod()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid attribute (must not be null)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Lorg/objectweb/asm/MethodVisitor;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    return-void
.end method

.method public visitCode()V
    .registers 3

    iget v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->access:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Abstract methods cannot have code"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->startCode:Z

    invoke-super {p0}, Lorg/objectweb/asm/MethodVisitor;->visitCode()V

    return-void
.end method

.method public visitEnd()V
    .registers 2

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkEndMethod()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->endMethod:Z

    invoke-super {p0}, Lorg/objectweb/asm/MethodVisitor;->visitEnd()V

    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkStartCode()V

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkEndCode()V

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkOpcode(II)V

    const-string v0, "owner"

    invoke-static {p2, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkInternalName(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->version:I

    const-string v1, "name"

    invoke-static {v0, p3, v1}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkUnqualifiedName(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p4, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkDesc(Ljava/lang/String;Z)V

    invoke-super {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->insnCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->insnCount:I

    return-void
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .registers 10

    const v2, 0x7fffffff

    const/4 v0, 0x0

    iget v1, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->insnCount:I

    iget v3, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->lastFrame:I

    if-ne v1, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "At most one frame can be visited at a given code location."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v1, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->insnCount:I

    iput v1, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->lastFrame:I

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid frame type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move v1, v2

    move v3, v2

    :goto_0
    if-le p2, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid nLocal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " for frame type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move v1, v0

    move v3, v0

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x1

    move v1, v0

    move v3, v2

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x3

    move v3, v0

    goto :goto_0

    :cond_1
    if-le p4, v3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid nStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " for frame type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    if-lez p2, :cond_4

    if-eqz p3, :cond_3

    array-length v1, p3

    if-ge v1, p2, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array local[] is shorter than nLocal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v1, v0

    :goto_1
    if-ge v1, p2, :cond_5

    aget-object v2, p3, v1

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkFrameValue(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    if-lez p4, :cond_7

    if-eqz p5, :cond_6

    array-length v1, p5

    if-ge v1, p4, :cond_7

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array stack[] is shorter than nStack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_2
    if-ge v0, p4, :cond_8

    aget-object v1, p5, v0

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkFrameValue(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    iget v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->expandedFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->expandedFrames:I

    :goto_3
    iget v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->expandedFrames:I

    if-lez v0, :cond_a

    iget v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->compressedFrames:I

    if-lez v0, :cond_a

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expanded and compressed frames must not be mixed."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->compressedFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->compressedFrames:I

    goto :goto_3

    :cond_a
    invoke-super/range {p0 .. p5}, Lorg/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public visitIincInsn(II)V
    .registers 4

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkStartCode()V

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkEndCode()V

    const-string v0, "Invalid variable index"

    invoke-static {p1, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkUnsignedShort(ILjava/lang/String;)V

    const-string v0, "Invalid increment"

    invoke-static {p2, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkSignedShort(ILjava/lang/String;)V

    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitIincInsn(II)V

    iget v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->insnCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->insnCount:I

    return-void
.end method

.method public visitInsn(I)V
    .registers 3

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkStartCode()V

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkEndCode()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkOpcode(II)V

    invoke-super {p0, p1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    iget v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->insnCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->insnCount:I

    return-void
.end method

.method public visitInsnAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 9

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkStartCode()V

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkEndCode()V

    ushr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x43

    if-eq v0, v1, :cond_0

    const/16 v1, 0x44

    if-eq v0, v1, :cond_0

    const/16 v1, 0x45

    if-eq v0, v1, :cond_0

    const/16 v1, 0x46

    if-eq v0, v1, :cond_0

    const/16 v1, 0x47

    if-eq v0, v1, :cond_0

    const/16 v1, 0x48

    if-eq v0, v1, :cond_0

    const/16 v1, 0x49

    if-eq v0, v1, :cond_0

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x4b

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid type reference sort 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p1, p2}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkTypeRefAndPath(ILorg/objectweb/asm/TypePath;)V

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkDesc(Ljava/lang/String;Z)V

    new-instance v0, Lorg/objectweb/asm/util/CheckAnnotationAdapter;

    invoke-super {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitInsnAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/objectweb/asm/util/CheckAnnotationAdapter;-><init>(Lorg/objectweb/asm/AnnotationVisitor;)V

    return-object v0
.end method

.method public visitIntInsn(II)V
    .registers 6

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkStartCode()V

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkEndCode()V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkOpcode(II)V

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x4

    if-lt p2, v0, :cond_0

    const/16 v0, 0xb

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid operand (must be an array type code T_...): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "Invalid operand"

    invoke-static {p2, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkSignedByte(ILjava/lang/String;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitIntInsn(II)V

    iget v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->insnCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->insnCount:I

    return-void

    :pswitch_1
    const-string v0, "Invalid operand"

    invoke-static {p2, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkSignedShort(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V
    .registers 8

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkStartCode()V

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkEndCode()V

    iget v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->version:I

    const-string v1, "name"

    invoke-static {v0, p1, v1}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkMethodIdentifier(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkMethodDesc(Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/objectweb/asm/Handle;->getTag()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    invoke-virtual {p3}, Lorg/objectweb/asm/Handle;->getTag()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "invalid handle tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p3}, Lorg/objectweb/asm/Handle;->getTag()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_1

    aget-object v1, p4, v0

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkLDCConstant(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V

    iget v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->insnCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->insnCount:I

    return-void
.end method

.method public visitJumpInsn(ILorg/objectweb/asm/Label;)V
    .registers 5

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkStartCode()V

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkEndCode()V

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkOpcode(II)V

    const/4 v0, 0x0

    const-string v1, "label"

    invoke-virtual {p0, p2, v0, v1}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkLabel(Lorg/objectweb/asm/Label;ZLjava/lang/String;)V

    invoke-static {p2}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkNonDebugLabel(Lorg/objectweb/asm/Label;)V

    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->usedLabels:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->insnCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->insnCount:I

    return-void
.end method

.method public visitLabel(Lorg/objectweb/asm/Label;)V
    .registers 5

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkStartCode()V

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkEndCode()V

    const/4 v0, 0x0

    const-string v1, "label"

    invoke-virtual {p0, p1, v0, v1}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkLabel(Lorg/objectweb/asm/Label;ZLjava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->labels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Already visited label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->labels:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->insnCount:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1}, Lorg/objectweb/asm/MethodVisitor;->visitLabel(Lorg/objectweb/asm/Label;)V

    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkStartCode()V

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkEndCode()V

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkLDCConstant(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    iget v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->insnCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->insnCount:I

    return-void
.end method

.method public visitLineNumber(ILorg/objectweb/asm/Label;)V
    .registers 5

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkStartCode()V

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkEndCode()V

    const-string v0, "Invalid line number"

    invoke-static {p1, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkUnsignedShort(ILjava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "start label"

    invoke-virtual {p0, p2, v0, v1}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkLabel(Lorg/objectweb/asm/Label;ZLjava/lang/String;)V

    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitLineNumber(ILorg/objectweb/asm/Label;)V

    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;I)V
    .registers 10

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkStartCode()V

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkEndCode()V

    iget v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->version:I

    const-string v1, "name"

    invoke-static {v0, p1, v1}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkUnqualifiedName(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkDesc(Ljava/lang/String;Z)V

    const-string v0, "start label"

    invoke-virtual {p0, p4, v2, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkLabel(Lorg/objectweb/asm/Label;ZLjava/lang/String;)V

    const-string v0, "end label"

    invoke-virtual {p0, p5, v2, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkLabel(Lorg/objectweb/asm/Label;ZLjava/lang/String;)V

    const-string v0, "Invalid variable index"

    invoke-static {p6, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkUnsignedShort(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->labels:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->labels:Ljava/util/Map;

    invoke-interface {v0, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid start and end labels (end must be greater than start)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super/range {p0 .. p6}, Lorg/objectweb/asm/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;I)V

    return-void
.end method

.method public visitLocalVariableAnnotation(ILorg/objectweb/asm/TypePath;[Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;[ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 13

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkStartCode()V

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkEndCode()V

    ushr-int/lit8 v1, p1, 0x18

    const/16 v2, 0x40

    if-eq v1, v2, :cond_0

    const/16 v2, 0x41

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid type reference sort 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1, p2}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkTypeRefAndPath(ILorg/objectweb/asm/TypePath;)V

    invoke-static {p6, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkDesc(Ljava/lang/String;Z)V

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    array-length v1, p4

    array-length v2, p3

    if-ne v1, v2, :cond_1

    array-length v1, p5

    array-length v2, p3

    if-eq v1, v2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid start, end and index arrays (must be non null and of identical length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v1, v0

    :goto_0
    array-length v0, p3

    if-ge v1, v0, :cond_4

    aget-object v0, p3, v1

    const-string v2, "start label"

    invoke-virtual {p0, v0, v4, v2}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkLabel(Lorg/objectweb/asm/Label;ZLjava/lang/String;)V

    aget-object v0, p4, v1

    const-string v2, "end label"

    invoke-virtual {p0, v0, v4, v2}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkLabel(Lorg/objectweb/asm/Label;ZLjava/lang/String;)V

    aget v0, p5, v1

    const-string v2, "Invalid variable index"

    invoke-static {v0, v2}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkUnsignedShort(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->labels:Ljava/util/Map;

    aget-object v2, p3, v1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->labels:Ljava/util/Map;

    aget-object v3, p4, v1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid start and end labels (end must be greater than start)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    invoke-super/range {p0 .. p7}, Lorg/objectweb/asm/MethodVisitor;->visitLocalVariableAnnotation(ILorg/objectweb/asm/TypePath;[Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;[ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V
    .registers 9

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkEndCode()V

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkStartCode()V

    const-string v0, "default label"

    invoke-virtual {p0, p1, v1, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkLabel(Lorg/objectweb/asm/Label;ZLjava/lang/String;)V

    invoke-static {p1}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkNonDebugLabel(Lorg/objectweb/asm/Label;)V

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    array-length v0, p2

    array-length v2, p3

    if-eq v0, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There must be the same number of keys and labels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_2

    aget-object v2, p3, v0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "label at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v1, v3}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkLabel(Lorg/objectweb/asm/Label;ZLjava/lang/String;)V

    aget-object v2, p3, v0

    invoke-static {v2}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkNonDebugLabel(Lorg/objectweb/asm/Label;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lorg/objectweb/asm/MethodVisitor;->visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->usedLabels:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    array-length v0, p3

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->usedLabels:Ljava/util/Set;

    aget-object v2, p3, v1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->insnCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->insnCount:I

    return-void
.end method

.method public visitMaxs(II)V
    .registers 7

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkStartCode()V

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkEndCode()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->endCode:Z

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->usedLabels:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/Label;

    iget-object v2, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->labels:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Undefined label used"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->handlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->labels:Ljava/util/Map;

    iget-object v2, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->handlers:Ljava/util/List;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->labels:Ljava/util/Map;

    iget-object v2, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->handlers:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Undefined try catch block labels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v1, v0, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Emty try catch block handler range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    add-int/lit8 v0, v3, 0x1

    goto :goto_0

    :cond_5
    const-string v0, "Invalid max stack"

    invoke-static {p1, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkUnsignedShort(ILjava/lang/String;)V

    const-string v0, "Invalid max locals"

    invoke-static {p2, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkUnsignedShort(ILjava/lang/String;)V

    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    iget v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0xb9

    if-ne p1, v0, :cond_1

    const/4 v5, 0x1

    :goto_1
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/util/CheckMethodAdapter;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    iget v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_0

    invoke-super/range {p0 .. p5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct/range {p0 .. p5}, Lorg/objectweb/asm/util/CheckMethodAdapter;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .registers 6

    const/16 v1, 0x5b

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkStartCode()V

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkEndCode()V

    invoke-static {p1, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkDesc(Ljava/lang/String;Z)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid descriptor (must be an array type descriptor): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    if-ge p2, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid dimensions (must be greater than 0): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-le p2, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid dimensions (must not be greater than dims(desc)): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    iget v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->insnCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->insnCount:I

    return-void
.end method

.method public visitParameter(Ljava/lang/String;I)V
    .registers 5

    if-eqz p1, :cond_0

    iget v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->version:I

    const-string v1, "name"

    invoke-static {v0, p1, v1}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkUnqualifiedName(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const v0, 0x9010

    invoke-static {p2, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkAccess(II)V

    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitParameter(Ljava/lang/String;I)V

    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 6

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkEndMethod()V

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkDesc(Ljava/lang/String;Z)V

    new-instance v0, Lorg/objectweb/asm/util/CheckAnnotationAdapter;

    invoke-super {p0, p1, p2, p3}, Lorg/objectweb/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/objectweb/asm/util/CheckAnnotationAdapter;-><init>(Lorg/objectweb/asm/AnnotationVisitor;)V

    return-object v0
.end method

.method public varargs visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V
    .registers 10

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkStartCode()V

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkEndCode()V

    if-ge p2, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Max = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " must be greater than or equal to min = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "default label"

    invoke-virtual {p0, p3, v1, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkLabel(Lorg/objectweb/asm/Label;ZLjava/lang/String;)V

    invoke-static {p3}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkNonDebugLabel(Lorg/objectweb/asm/Label;)V

    if-eqz p4, :cond_1

    array-length v0, p4

    sub-int v2, p2, p1

    add-int/lit8 v2, v2, 0x1

    if-eq v0, v2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There must be max - min + 1 labels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v0, v1

    :goto_0
    array-length v2, p4

    if-ge v0, v2, :cond_3

    aget-object v2, p4, v0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "label at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v1, v3}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkLabel(Lorg/objectweb/asm/Label;ZLjava/lang/String;)V

    aget-object v2, p4, v0

    invoke-static {v2}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkNonDebugLabel(Lorg/objectweb/asm/Label;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V

    :goto_1
    array-length v0, p4

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->usedLabels:Ljava/util/Set;

    aget-object v2, p4, v1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->insnCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->insnCount:I

    return-void
.end method

.method public visitTryCatchAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 9

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkStartCode()V

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkEndCode()V

    ushr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid type reference sort 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p1, p2}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkTypeRefAndPath(ILorg/objectweb/asm/TypePath;)V

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkDesc(Ljava/lang/String;Z)V

    new-instance v0, Lorg/objectweb/asm/util/CheckAnnotationAdapter;

    invoke-super {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitTryCatchAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/objectweb/asm/util/CheckAnnotationAdapter;-><init>(Lorg/objectweb/asm/AnnotationVisitor;)V

    return-object v0
.end method

.method public visitTryCatchBlock(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Ljava/lang/String;)V
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkStartCode()V

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkEndCode()V

    const-string v0, "start label"

    invoke-virtual {p0, p1, v1, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkLabel(Lorg/objectweb/asm/Label;ZLjava/lang/String;)V

    const-string v0, "end label"

    invoke-virtual {p0, p2, v1, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkLabel(Lorg/objectweb/asm/Label;ZLjava/lang/String;)V

    const-string v0, "handler label"

    invoke-virtual {p0, p3, v1, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkLabel(Lorg/objectweb/asm/Label;ZLjava/lang/String;)V

    invoke-static {p1}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkNonDebugLabel(Lorg/objectweb/asm/Label;)V

    invoke-static {p2}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkNonDebugLabel(Lorg/objectweb/asm/Label;)V

    invoke-static {p3}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkNonDebugLabel(Lorg/objectweb/asm/Label;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->labels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->labels:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->labels:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Try catch blocks must be visited before their labels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p4, :cond_2

    const-string v0, "type"

    invoke-static {p4, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkInternalName(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitTryCatchBlock(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->handlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->handlers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 9

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkEndMethod()V

    ushr-int/lit8 v0, p1, 0x18

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid type reference sort 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p1, p2}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkTypeRefAndPath(ILorg/objectweb/asm/TypePath;)V

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkDesc(Ljava/lang/String;Z)V

    new-instance v0, Lorg/objectweb/asm/util/CheckAnnotationAdapter;

    invoke-super {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/objectweb/asm/util/CheckAnnotationAdapter;-><init>(Lorg/objectweb/asm/AnnotationVisitor;)V

    return-object v0
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .registers 6

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkStartCode()V

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkEndCode()V

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkOpcode(II)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkInternalName(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xbb

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "NEW cannot be used to create arrays: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    iget v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->insnCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->insnCount:I

    return-void
.end method

.method public visitVarInsn(II)V
    .registers 4

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkStartCode()V

    invoke-virtual {p0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkEndCode()V

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkOpcode(II)V

    const-string v0, "Invalid variable index"

    invoke-static {p2, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkUnsignedShort(ILjava/lang/String;)V

    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    iget v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->insnCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter;->insnCount:I

    return-void
.end method
