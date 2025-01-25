.class public abstract Lorg/objectweb/asm/xml/ASMContentHandler$Rule;
.super Ljava/lang/Object;


# static fields
.field static class$org$objectweb$asm$Handle:Ljava/lang/Class;

.field static class$org$objectweb$asm$Type:Ljava/lang/Class;


# instance fields
.field final this$0:Lorg/objectweb/asm/xml/ASMContentHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "org.objectweb.asm.Type"

    invoke-static {v0}, Lorg/objectweb/asm/xml/ASMContentHandler$Rule;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/xml/ASMContentHandler$Rule;->class$org$objectweb$asm$Type:Ljava/lang/Class;

    const-string v0, "org.objectweb.asm.Handle"

    invoke-static {v0}, Lorg/objectweb/asm/xml/ASMContentHandler$Rule;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/xml/ASMContentHandler$Rule;->class$org$objectweb$asm$Handle:Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>(Lorg/objectweb/asm/xml/ASMContentHandler;)V
    .registers 2

    iput-object p1, p0, Lorg/objectweb/asm/xml/ASMContentHandler$Rule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method private final decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/16 v4, 0x5c

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_c
    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_48

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_3d

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_28

    const/16 v2, 0x5c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_28
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x3

    goto :goto_25

    :cond_3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_40
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_40} :catch_41

    goto :goto_25

    :catch_41
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_48
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public begin(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method decodeHandle(Ljava/lang/String;)Lorg/objectweb/asm/Handle;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/16 v0, 0x2e

    :try_start_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x28

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/16 v2, 0x28

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    new-instance v3, Lorg/objectweb/asm/Handle;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v5, v0, v1}, Lorg/objectweb/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_3a} :catch_3b

    return-object v3

    :catch_3b
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Malformed handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public end(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method protected final getAccess(Ljava/lang/String;)I
    .registers 5

    const/4 v2, -0x1

    const/4 v0, 0x0

    const-string v1, "public"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_b

    const/4 v0, 0x1

    :cond_b
    const-string v1, "private"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_15

    or-int/lit8 v0, v0, 0x2

    :cond_15
    const-string v1, "protected"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1f

    or-int/lit8 v0, v0, 0x4

    :cond_1f
    const-string v1, "static"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_29

    or-int/lit8 v0, v0, 0x8

    :cond_29
    const-string v1, "final"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_33

    or-int/lit8 v0, v0, 0x10

    :cond_33
    const-string v1, "super"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_3d

    or-int/lit8 v0, v0, 0x20

    :cond_3d
    const-string v1, "synchronized"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_47

    or-int/lit8 v0, v0, 0x20

    :cond_47
    const-string v1, "volatile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_51

    or-int/lit8 v0, v0, 0x40

    :cond_51
    const-string v1, "bridge"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_5b

    or-int/lit8 v0, v0, 0x40

    :cond_5b
    const-string v1, "varargs"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_65

    or-int/lit16 v0, v0, 0x80

    :cond_65
    const-string v1, "transient"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_6f

    or-int/lit16 v0, v0, 0x80

    :cond_6f
    const-string v1, "native"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_79

    or-int/lit16 v0, v0, 0x100

    :cond_79
    const-string v1, "interface"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_83

    or-int/lit16 v0, v0, 0x200

    :cond_83
    const-string v1, "abstract"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_8d

    or-int/lit16 v0, v0, 0x400

    :cond_8d
    const-string v1, "strict"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_97

    or-int/lit16 v0, v0, 0x800

    :cond_97
    const-string v1, "synthetic"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_a1

    or-int/lit16 v0, v0, 0x1000

    :cond_a1
    const-string v1, "annotation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_ab

    or-int/lit16 v0, v0, 0x2000

    :cond_ab
    const-string v1, "enum"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_b5

    or-int/lit16 v0, v0, 0x4000

    :cond_b5
    const-string v1, "deprecated"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_c0

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    :cond_c0
    const-string v1, "mandated"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_cc

    const v1, 0x8000

    or-int/2addr v0, v1

    :cond_cc
    return v0
.end method

.method protected final getCodeVisitor()Lorg/objectweb/asm/MethodVisitor;
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/xml/ASMContentHandler$Rule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    invoke-virtual {v0}, Lorg/objectweb/asm/xml/ASMContentHandler;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/MethodVisitor;

    return-object v0
.end method

.method protected final getLabel(Ljava/lang/Object;)Lorg/objectweb/asm/Label;
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/xml/ASMContentHandler$Rule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    iget-object v0, v0, Lorg/objectweb/asm/xml/ASMContentHandler;->labels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/Label;

    if-nez v0, :cond_18

    new-instance v0, Lorg/objectweb/asm/Label;

    invoke-direct {v0}, Lorg/objectweb/asm/Label;-><init>()V

    iget-object v1, p0, Lorg/objectweb/asm/xml/ASMContentHandler$Rule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    iget-object v1, v1, Lorg/objectweb/asm/xml/ASMContentHandler;->labels:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    return-object v0
.end method

.method protected final getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_f

    const-string v0, "Ljava/lang/String;"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0, p2}, Lorg/objectweb/asm/xml/ASMContentHandler$Rule;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_f
    :goto_f
    return-object v0

    :cond_10
    const-string v0, "Ljava/lang/Integer;"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "I"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "S"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "B"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "C"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "Z"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    :cond_40
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    goto :goto_f

    :cond_46
    const-string v0, "Ljava/lang/Short;"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p2}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    goto :goto_f

    :cond_54
    const-string v0, "Ljava/lang/Byte;"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p2}, Ljava/lang/Byte;-><init>(Ljava/lang/String;)V

    goto :goto_f

    :cond_62
    const-string v0, "Ljava/lang/Character;"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    new-instance v0, Ljava/lang/Character;

    invoke-direct {p0, p2}, Lorg/objectweb/asm/xml/ASMContentHandler$Rule;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    goto :goto_f

    :cond_79
    const-string v0, "Ljava/lang/Boolean;"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_f

    :cond_86
    const-string v0, "Ljava/lang/Long;"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    const-string v0, "J"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    :cond_96
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_9d
    const-string v0, "Ljava/lang/Float;"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ad

    const-string v0, "F"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    :cond_ad
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p2}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_b4
    const-string v0, "Ljava/lang/Double;"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c4

    const-string v0, "D"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cb

    :cond_c4
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_cb
    sget-object v0, Lorg/objectweb/asm/xml/ASMContentHandler$Rule;->class$org$objectweb$asm$Type:Ljava/lang/Class;

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    invoke-static {p2}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    goto/16 :goto_f

    :cond_dd
    sget-object v0, Lorg/objectweb/asm/xml/ASMContentHandler$Rule;->class$org$objectweb$asm$Handle:Ljava/lang/Class;

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ef

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/xml/ASMContentHandler$Rule;->decodeHandle(Ljava/lang/String;)Lorg/objectweb/asm/Handle;

    move-result-object v0

    goto/16 :goto_f

    :cond_ef
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " desc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ctx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
