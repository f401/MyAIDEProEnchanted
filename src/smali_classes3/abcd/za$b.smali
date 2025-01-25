.class Labcd/za$b;
.super Ljava/io/OutputStream;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/za;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
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
.field private EQ:Z
    .annotation runtime Labcd/ru;
        field = 0x24fd38055cbcb0f0L
    .end annotation
.end field

.field private FH:[B
    .annotation runtime Labcd/ru;
        field = -0x1213027c9f9c2c8dL
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = 0x19fa5062dd87fff1L
    .end annotation
.end field

.field private VH:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x3aa5b1d3eccaa291L
    .end annotation
.end field

.field private Zo:Labcd/Da;
    .annotation runtime Labcd/ru;
        field = 0x1f767395f0075ee0L
    .end annotation
.end field

.field private gn:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x32d450d9d6a09378L
    .end annotation
.end field

.field private tp:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x202f4a7b1ac34360L
    .end annotation
.end field

.field private u7:Ljava/util/Set;
    .annotation runtime Labcd/ru;
        field = -0x1a995551afc71cb5L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v5:J
    .annotation runtime Labcd/ru;
        field = -0x1db41c002b41776dL
    .end annotation
.end field

.field final we:Labcd/za;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/za$b;

    const-wide v1, 0x531186eeaf1e8c20L  # 1.4281316624847835E92

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/za;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;JLabcd/Da;Ljava/lang/String;Z)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x50ad0ea2325a7e0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Labcd/Da;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    sget-boolean v0, Labcd/za$b;->j6:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    const/4 v2, 0x3

    aput-object p4, v0, v2

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p5, p6}, Ljava/lang/Long;-><init>(J)V

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const/4 v2, 0x5

    aput-object p7, v0, v2

    const/4 v2, 0x6

    aput-object p8, v0, v2

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p9}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v3, 0x7

    aput-object v2, v0, v3

    const-wide v2, -0xaeaf45f1b46491L

    invoke-static {v2, v3, v1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_33
    iput-object p1, p0, Labcd/za$b;->we:Labcd/za;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    invoke-static {p1}, Labcd/za;->j6(Labcd/za;)[B

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-static {p1}, Labcd/za;->j6(Labcd/za;)[B

    move-result-object v0

    iput-object v0, p0, Labcd/za$b;->FH:[B

    invoke-static {p1, v1}, Labcd/za;->j6(Labcd/za;[B)[B

    goto :goto_4e

    :cond_48
    const/16 p1, 0x2710

    new-array p1, p1, [B

    iput-object p1, p0, Labcd/za$b;->FH:[B

    :goto_4e
    iput-object p7, p0, Labcd/za$b;->Zo:Labcd/Da;

    iput-wide p5, p0, Labcd/za$b;->v5:J

    iput-object p3, p0, Labcd/za$b;->VH:Ljava/lang/String;

    iput-object p4, p0, Labcd/za$b;->gn:Ljava/lang/String;

    iput-object p2, p0, Labcd/za$b;->u7:Ljava/util/Set;

    iput-object p8, p0, Labcd/za$b;->tp:Ljava/lang/String;

    iput-boolean p9, p0, Labcd/za$b;->EQ:Z

    return-void
.end method

.method private j6(Ljava/lang/String;)Z
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x77027fdbb5aedf8L
    .end annotation

    const-wide v0, -0x2e9c0f64da18fccL  # -3.551995675352043E294

    :try_start_5
    sget-boolean v2, Labcd/za$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Labcd/za$b;->VH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Labcd/za$b;->gn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_c9

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_c9

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    iget v3, p0, Labcd/za$b;->Hw:I

    int-to-long v7, v3

    cmp-long v3, v5, v7

    if-eqz v3, :cond_50

    goto/16 :goto_c9

    :cond_50
    iget-object v3, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v3}, Labcd/za;->VH(Labcd/za;)Z

    move-result v3

    if-eqz v3, :cond_6e

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6e
    iget-object v3, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v3}, Labcd/za;->gn(Labcd/za;)[B

    move-result-object v3

    if-eqz v3, :cond_83

    iget-object v3, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v3}, Labcd/za;->gn(Labcd/za;)[B

    move-result-object v3

    iget-object v5, p0, Labcd/za$b;->we:Labcd/za;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Labcd/za;->DW(Labcd/za;[B)[B

    goto :goto_87

    :cond_83
    const/16 v3, 0x2710

    new-array v3, v3, [B

    :goto_87
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_8d
    invoke-virtual {v5, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_b2

    const/4 v7, 0x0

    :goto_95
    if-ge v7, v6, :cond_8d

    iget v8, p0, Labcd/za$b;->Hw:I

    if-gt v2, v8, :cond_a9

    iget-object v8, p0, Labcd/za$b;->FH:[B

    aget-byte v8, v8, v2

    aget-byte v9, v3, v7

    if-eq v8, v9, :cond_a4

    goto :goto_a9

    :cond_a4
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_95

    :cond_a9
    :goto_a9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    iget-object v2, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v2, v3}, Labcd/za;->DW(Labcd/za;[B)[B

    return v4

    :cond_b2
    iget v6, p0, Labcd/za$b;->Hw:I

    if-eq v2, v6, :cond_bf

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    iget-object v2, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v2, v3}, Labcd/za;->DW(Labcd/za;[B)[B

    return v4

    :cond_bf
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    iget-object v2, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v2, v3}, Labcd/za;->DW(Labcd/za;[B)[B
    :try_end_c7
    .catchall {:try_start_5 .. :try_end_c7} :catchall_ca

    const/4 p1, 0x1

    return p1

    :cond_c9
    :goto_c9
    return v4

    :catchall_ca
    move-exception v2

    sget-boolean v3, Labcd/za$b;->DW:Z

    if-eqz v3, :cond_d2

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d2
    goto :goto_d4

    :goto_d3
    throw v2

    :goto_d4
    goto :goto_d3
.end method


# virtual methods
.method public close()V
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x1c733f9fb184b900L
    .end annotation

    const-wide v0, 0xeb62c0ecb100c70L  # 8.512365777137817E-238

    :try_start_5
    sget-boolean v2, Labcd/za$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v2, p0, Labcd/za$b;->EQ:Z

    if-nez v2, :cond_32

    iget-object v2, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v2}, Labcd/za;->u7(Labcd/za;)Ljava/util/zip/CRC32;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->reset()V

    iget-object v2, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v2}, Labcd/za;->u7(Labcd/za;)Ljava/util/zip/CRC32;

    move-result-object v2

    iget-object v3, p0, Labcd/za$b;->FH:[B

    iget v4, p0, Labcd/za$b;->Hw:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/util/zip/CRC32;->update([BII)V

    iget-object v2, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v2}, Labcd/za;->u7(Labcd/za;)Ljava/util/zip/CRC32;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    goto :goto_34

    :cond_32
    const-wide/16 v2, 0x0

    :goto_34
    iget-object v4, p0, Labcd/za$b;->u7:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v5

    :cond_3c
    :goto_3c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1f7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Labcd/za$b;->VH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Labcd/za$b;->gn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Labcd/za$b;->VH:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v10}, Labcd/za;->tp(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v10

    new-instance v11, Ljava/lang/Long;

    iget-wide v12, p0, Labcd/za$b;->v5:J

    invoke-direct {v11, v12, v13}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v10, v8, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v10}, Labcd/za;->EQ(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v10

    iget-object v11, p0, Labcd/za$b;->Zo:Labcd/Da;

    invoke-virtual {v10, v8, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v10}, Labcd/za;->we(Labcd/za;)Ljava/util/HashSet;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-boolean v10, p0, Labcd/za$b;->EQ:Z

    if-eqz v10, :cond_f3

    if-nez v6, :cond_c6

    iget-object v7, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v7}, Labcd/za;->J0(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Labcd/za$c;

    instance-of v10, v7, Labcd/za$a;

    if-eqz v10, :cond_b6

    move-object v6, v7

    check-cast v6, Labcd/za$a;

    :cond_b6
    if-nez v6, :cond_bf

    new-instance v6, Labcd/za$a;

    iget-object v7, p0, Labcd/za$b;->we:Labcd/za;

    invoke-direct {v6, v7, v5}, Labcd/za$a;-><init>(Labcd/za;Labcd/wa;)V

    :cond_bf
    iget-object v7, p0, Labcd/za$b;->FH:[B

    iget v10, p0, Labcd/za$b;->Hw:I

    invoke-virtual {v6, v7, v10}, Labcd/za$a;->j6([BI)V

    :cond_c6
    iget-object v7, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v7}, Labcd/za;->J8(Labcd/za;)I

    move-result v10

    invoke-static {v6}, Labcd/za$a;->j6(Labcd/za$a;)I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v7, v10}, Labcd/za;->j6(Labcd/za;I)I

    iget-object v7, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v7}, Labcd/za;->J0(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v7

    invoke-virtual {v7, v8, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v7}, Labcd/za;->DW(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v7

    iget-object v10, p0, Labcd/za$b;->tp:Ljava/lang/String;

    invoke-virtual {v7, v8, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v7}, Labcd/za;->FH(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v7

    :goto_ee
    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3c

    :cond_f3
    iget-object v10, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v10}, Labcd/za;->Hw(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_113

    iget-object v10, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v10}, Labcd/za;->Hw(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v12, v2, v10

    if-eqz v12, :cond_3c

    :cond_113
    iget-object v10, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v10}, Labcd/za;->Hw(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v10

    new-instance v11, Ljava/lang/Long;

    invoke-direct {v11, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v10, v8, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v7}, Labcd/za$b;->j6(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1a4

    iget-object v7, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v7}, Labcd/za;->v5(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_147

    iget-object v7, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v7}, Labcd/za;->v5(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v7, v2, v10

    if-eqz v7, :cond_3c

    :cond_147
    if-nez v6, :cond_16c

    iget-object v7, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v7}, Labcd/za;->J0(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Labcd/za$c;

    instance-of v10, v7, Labcd/za$a;

    if-eqz v10, :cond_15c

    move-object v6, v7

    check-cast v6, Labcd/za$a;

    :cond_15c
    if-nez v6, :cond_165

    new-instance v6, Labcd/za$a;

    iget-object v7, p0, Labcd/za$b;->we:Labcd/za;

    invoke-direct {v6, v7, v5}, Labcd/za$a;-><init>(Labcd/za;Labcd/wa;)V

    :cond_165
    iget-object v7, p0, Labcd/za$b;->FH:[B

    iget v10, p0, Labcd/za$b;->Hw:I

    invoke-virtual {v6, v7, v10}, Labcd/za$a;->j6([BI)V

    :cond_16c
    iget-object v7, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v7}, Labcd/za;->J8(Labcd/za;)I

    move-result v10

    invoke-static {v6}, Labcd/za$a;->j6(Labcd/za$a;)I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v7, v10}, Labcd/za;->j6(Labcd/za;I)I

    iget-object v7, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v7}, Labcd/za;->J0(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v7

    invoke-virtual {v7, v8, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v7}, Labcd/za;->DW(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v7

    iget-object v10, p0, Labcd/za$b;->tp:Ljava/lang/String;

    invoke-virtual {v7, v8, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v7}, Labcd/za;->FH(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v7}, Labcd/za;->v5(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v7

    new-instance v9, Ljava/lang/Long;

    invoke-direct {v9, v2, v3}, Ljava/lang/Long;-><init>(J)V

    goto/16 :goto_ee

    :cond_1a4
    iget-object v7, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v7}, Labcd/za;->J0(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v7}, Labcd/za;->v5(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, ".class"

    invoke-virtual {v8, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3c

    const/16 v7, 0x24

    invoke-virtual {v8, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1d3

    invoke-virtual {v8, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    sget-char v9, Ljava/io/File;->separatorChar:C

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    if-ge v7, v9, :cond_3c

    :cond_1d3
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_3c

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    iget-object v7, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v7}, Labcd/za;->Zo(Labcd/za;)Ljava/util/HashMap;

    move-result-object v7

    new-instance v11, Ljava/lang/Long;

    invoke-direct {v11, v9, v10}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v7, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3c

    :cond_1f7
    iget-object v2, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v2}, Labcd/za;->j6(Labcd/za;)[B

    move-result-object v2

    if-nez v2, :cond_206

    iget-object v2, p0, Labcd/za$b;->we:Labcd/za;

    iget-object v3, p0, Labcd/za$b;->FH:[B

    invoke-static {v2, v3}, Labcd/za;->j6(Labcd/za;[B)[B

    :cond_206
    iput-object v5, p0, Labcd/za$b;->FH:[B
    :try_end_208
    .catchall {:try_start_5 .. :try_end_208} :catchall_209

    return-void

    :catchall_209
    move-exception v2

    sget-boolean v3, Labcd/za$b;->DW:Z

    if-eqz v3, :cond_211

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_211
    goto :goto_213

    :goto_212
    throw v2

    :goto_213
    goto :goto_212
.end method

.method public write(I)V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0xeab096575705a0L
    .end annotation

    const-wide v0, 0x5e81d33afca36ee4L

    :try_start_5
    sget-boolean v2, Labcd/za$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget v2, p0, Labcd/za$b;->Hw:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Labcd/za$b;->FH:[B

    array-length v4, v3

    if-le v2, v4, :cond_28

    array-length v3, v3

    shl-int/lit8 v3, v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v3, v3, [B

    iget-object v4, p0, Labcd/za$b;->FH:[B

    iget v5, p0, Labcd/za$b;->Hw:I

    const/4 v6, 0x0

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Labcd/za$b;->FH:[B

    :cond_28
    iget-object v3, p0, Labcd/za$b;->FH:[B

    iget v4, p0, Labcd/za$b;->Hw:I

    int-to-byte v5, p1

    aput-byte v5, v3, v4

    iput v2, p0, Labcd/za$b;->Hw:I
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_32

    return-void

    :catchall_32
    move-exception v2

    sget-boolean v3, Labcd/za$b;->DW:Z

    if-eqz v3, :cond_3f

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    throw v2
.end method

.method public write([BII)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0xd4609b7b03c78ecL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/za$b;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x121dc5146420768L  # 3.2555981100041035E-303

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    iget v0, p0, Labcd/za$b;->Hw:I

    add-int/2addr v0, p3

    iget-object v1, p0, Labcd/za$b;->FH:[B

    array-length v2, v1

    if-le v0, v2, :cond_33

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    iget-object v2, p0, Labcd/za$b;->FH:[B

    iget v3, p0, Labcd/za$b;->Hw:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Labcd/za$b;->FH:[B

    :cond_33
    iget-object v1, p0, Labcd/za$b;->FH:[B

    iget v2, p0, Labcd/za$b;->Hw:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Labcd/za$b;->Hw:I
    :try_end_3c
    .catchall {:try_start_0 .. :try_end_3c} :catchall_3d

    return-void

    :catchall_3d
    move-exception v0

    sget-boolean v1, Labcd/za$b;->DW:Z

    if-eqz v1, :cond_57

    const-wide v2, 0x121dc5146420768L  # 3.2555981100041035E-303

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_57
    throw v0
.end method
