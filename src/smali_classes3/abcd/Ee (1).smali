.class public Labcd/Ee;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private FH:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x29ae9582297b8ab3L
    .end annotation
.end field

.field private Hw:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x4d7b1ab285fbc210L
    .end annotation
.end field

.field private v5:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x40fed5c85441ab8L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Ee;

    const-wide v1, -0x40e52dcac256b414L  # -1.0231447178314618E-4

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0xa4b2dd46472ef20L  # -1.000408588624785E259

    :try_start_6
    sget-boolean v3, Labcd/Ee;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v3, "\t"

    iput-object v3, p0, Labcd/Ee;->FH:Ljava/lang/String;

    const-string v3, "\n"

    iput-object v3, p0, Labcd/Ee;->Hw:Ljava/lang/String;

    const-string v3, "UTF8"

    iput-object v3, p0, Labcd/Ee;->v5:Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v3

    sget-boolean v4, Labcd/Ee;->DW:Z

    if-eqz v4, :cond_25

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v3
.end method

.method private j6(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x31388d1d40667dL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ee;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x38f45b9968fd1b08L  # 2.4504821947291553E-34

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    if-nez p2, :cond_f

    return-void

    :cond_f
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_40

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_3a

    const/16 v3, 0x26

    if-eq v2, v3, :cond_37

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_34

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_2e

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_3d

    :cond_2e
    const-string v2, "&gt;"

    :goto_30
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3d

    :cond_34
    const-string v2, "&lt;"

    goto :goto_30

    :cond_37
    const-string v2, "&amp;"

    goto :goto_30

    :cond_3a
    const-string v2, "&#xD;"
    :try_end_3c
    .catchall {:try_start_0 .. :try_end_3c} :catchall_41

    goto :goto_30

    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_40
    return-void

    :catchall_41
    move-exception v0

    sget-boolean v1, Labcd/Ee;->DW:Z

    if-eqz v1, :cond_52

    const-wide v2, 0x38f45b9968fd1b08L  # 2.4504821947291553E-34

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_52
    goto :goto_54

    :goto_53
    throw v0

    :goto_54
    goto :goto_53
.end method

.method private j6(Lorg/w3c/dom/Node;Ljava/io/Writer;ILjava/lang/String;)V
    .registers 15
    .annotation runtime Labcd/su;
        method = -0xe294b11aec5789L
    .end annotation

    const-string v0, ">"

    :try_start_2
    sget-boolean v1, Labcd/Ee;->j6:Z

    if-eqz v1, :cond_17

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x7af34a9bb4a9e20L

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v8, p4

    invoke-static/range {v2 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5c

    const/16 v0, 0x9

    if-eq v1, v0, :cond_25

    goto/16 :goto_140

    :cond_25
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Document;

    const-string v1, "<?xml version=\""

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getXmlVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\" encoding=\"utf-8\""

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "?>"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Ee;->Hw:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    if-eqz v0, :cond_140

    const/4 v1, 0x0

    :goto_4a
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_140

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    const-string v4, ""

    invoke-direct {p0, v3, p2, v2, v4}, Labcd/Ee;->j6(Lorg/w3c/dom/Node;Ljava/io/Writer;ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    :cond_5c
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Labcd/Ee;->Hw:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Labcd/Ee;->FH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez p3, :cond_97

    invoke-virtual {p2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v5, "xmlns:android=\"http://schemas.android.com/apk/res/android\""

    invoke-virtual {p2, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_97
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    const/4 v6, 0x0

    :goto_9c
    invoke-interface {v5}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_d2

    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Attr;

    const-string v8, "xmlns:android"

    invoke-interface {v7}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_cf

    invoke-virtual {p2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-interface {v7}, Lorg/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v8, "=\""

    invoke-virtual {p2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-interface {v7}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p2, v7}, Labcd/Ee;->j6(Ljava/io/Writer;Ljava/lang/String;)V

    const-string v7, "\""

    invoke-virtual {p2, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_cf
    add-int/lit8 v6, v6, 0x1

    goto :goto_9c

    :cond_d2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    if-eqz v4, :cond_133

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_133

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v5, p0, Labcd/Ee;->Hw:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v5, p0, Labcd/Ee;->Hw:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_eb
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v2, v5, :cond_118

    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v3, :cond_115

    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Labcd/Ee;->FH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, p3, 0x1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, p2, v7, v6}, Labcd/Ee;->j6(Lorg/w3c/dom/Node;Ljava/io/Writer;ILjava/lang/String;)V

    :cond_115
    add-int/lit8 v2, v2, 0x1

    goto :goto_eb

    :cond_118
    invoke-virtual {p2, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "</"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_12f
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_136

    :cond_133
    const-string v0, "/>"

    goto :goto_12f

    :goto_136
    iget-object v0, p0, Labcd/Ee;->Hw:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Ee;->Hw:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_140
    .catchall {:try_start_2 .. :try_end_140} :catchall_141

    :cond_140
    :goto_140
    return-void

    :catchall_141
    move-exception v0

    sget-boolean v1, Labcd/Ee;->DW:Z

    if-eqz v1, :cond_158

    const-wide v2, 0x7af34a9bb4a9e20L

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_158
    goto :goto_15a

    :goto_159
    throw v0

    :goto_15a
    goto :goto_159
.end method


# virtual methods
.method public j6(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Ee;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x374e6e2906130ddL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Labcd/Ee;->v5:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Labcd/Ee;->j6(Lorg/w3c/dom/Document;Ljava/io/Writer;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v0

    sget-boolean v1, Labcd/Ee;->DW:Z

    if-eqz v1, :cond_28

    const-wide v2, 0x374e6e2906130ddL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_28
    throw v0
.end method

.method public j6(Lorg/w3c/dom/Document;Ljava/io/Writer;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Ee;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x12e8f5b17b556290L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-interface {p1}, Lorg/w3c/dom/Document;->normalize()V

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Labcd/Ee;->j6(Lorg/w3c/dom/Node;Ljava/io/Writer;ILjava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/Writer;->flush()V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v0

    sget-boolean v1, Labcd/Ee;->DW:Z

    if-eqz v1, :cond_2a

    const-wide v2, 0x12e8f5b17b556290L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v0
.end method
