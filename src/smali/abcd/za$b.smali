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
            "Ljava/util/Set",
            "<",
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
    .registers 4

    const-wide v2, 0x531186eeaf1e8c20L    # 1.4281316624847835E92

    const-class v0, Labcd/za$b;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/za;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;JLabcd/Da;Ljava/lang/String;Z)V
    .registers 19
    .annotation runtime Labcd/su;
        method = -0x50ad0ea2325a7e0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
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

    const/4 v7, 0x0

    sget-boolean v2, Labcd/za$b;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, -0xaeaf45f1b46491L

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    const/4 v5, 0x4

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p5, p6}, Ljava/lang/Long;-><init>(J)V

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object p7, v4, v5

    const/4 v5, 0x6

    aput-object p8, v4, v5

    const/4 v5, 0x7

    new-instance v6, Ljava/lang/Boolean;

    move/from16 v0, p9

    invoke-direct {v6, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v4, v5

    invoke-static {v2, v3, v7, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/za$b;->we:Labcd/za;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    invoke-static {p1}, Labcd/za;->j6(Labcd/za;)[B

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Labcd/za;->j6(Labcd/za;)[B

    move-result-object v2

    iput-object v2, p0, Labcd/za$b;->FH:[B

    invoke-static {p1, v7}, Labcd/za;->j6(Labcd/za;[B)[B

    :goto_0
    move-object/from16 v0, p7

    iput-object v0, p0, Labcd/za$b;->Zo:Labcd/Da;

    iput-wide p5, p0, Labcd/za$b;->v5:J

    iput-object p3, p0, Labcd/za$b;->VH:Ljava/lang/String;

    iput-object p4, p0, Labcd/za$b;->gn:Ljava/lang/String;

    iput-object p2, p0, Labcd/za$b;->u7:Ljava/util/Set;

    move-object/from16 v0, p8

    iput-object v0, p0, Labcd/za$b;->tp:Ljava/lang/String;

    move/from16 v0, p9

    iput-boolean v0, p0, Labcd/za$b;->EQ:Z

    return-void

    :cond_1
    const/16 v2, 0x2710

    new-array v2, v2, [B

    iput-object v2, p0, Labcd/za$b;->FH:[B

    goto :goto_0
.end method

.method private j6(Ljava/lang/String;)Z
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x77027fdbb5aedf8L
    .end annotation

    const-wide v8, -0x2e9c0f64da18fccL    # -3.551995675352043E294

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/za$b;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x2e9c0f64da18fccL    # -3.551995675352043E294

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/za$b;->VH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/za$b;->gn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    iget v1, p0, Labcd/za$b;->Hw:I

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v1}, Labcd/za;->VH(Labcd/za;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v1}, Labcd/za;->gn(Labcd/za;)[B

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v1}, Labcd/za;->gn(Labcd/za;)[B

    move-result-object v1

    iget-object v3, p0, Labcd/za$b;->we:Labcd/za;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Labcd/za;->DW(Labcd/za;[B)[B

    move-object v3, v1

    :goto_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move v2, v0

    :cond_4
    invoke-virtual {v4, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v1, -0x1

    if-eq v5, v1, :cond_9

    move v1, v0

    :goto_2
    if-ge v1, v5, :cond_4

    iget v6, p0, Labcd/za$b;->Hw:I

    if-gt v2, v6, :cond_5

    iget-object v6, p0, Labcd/za$b;->FH:[B

    aget-byte v6, v6, v2

    aget-byte v7, v3, v1

    if-eq v6, v7, :cond_8

    :cond_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    iget-object v1, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v1, v3}, Labcd/za;->DW(Labcd/za;[B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/za$b;->DW:Z

    if-eqz v1, :cond_6

    invoke-static {v0, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    throw v0

    :cond_7
    const/16 v1, 0x2710

    :try_start_1
    new-array v1, v1, [B

    move-object v3, v1

    goto :goto_1

    :cond_8
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    iget v1, p0, Labcd/za$b;->Hw:I

    if-eq v2, v1, :cond_a

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    iget-object v1, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v1, v3}, Labcd/za;->DW(Labcd/za;[B)[B

    goto :goto_0

    :cond_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    iget-object v0, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v0, v3}, Labcd/za;->DW(Labcd/za;[B)[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public close()V
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x1c733f9fb184b900L
    .end annotation

    const-wide v12, 0xeb62c0ecb100c70L    # 8.512365777137817E-238

    const/4 v2, 0x0

    :try_start_0
    sget-boolean v0, Labcd/za$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xeb62c0ecb100c70L    # 8.512365777137817E-238

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const-wide/16 v0, 0x0

    iget-boolean v3, p0, Labcd/za$b;->EQ:Z

    if-nez v3, :cond_10

    iget-object v0, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v0}, Labcd/za;->u7(Labcd/za;)Ljava/util/zip/CRC32;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    iget-object v0, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v0}, Labcd/za;->u7(Labcd/za;)Ljava/util/zip/CRC32;

    move-result-object v0

    iget-object v1, p0, Labcd/za$b;->FH:[B

    const/4 v3, 0x0

    iget v4, p0, Labcd/za$b;->Hw:I

    invoke-virtual {v0, v1, v3, v4}, Ljava/util/zip/CRC32;->update([BII)V

    iget-object v0, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v0}, Labcd/za;->u7(Labcd/za;)Ljava/util/zip/CRC32;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    move-wide v4, v0

    :goto_0
    iget-object v0, p0, Labcd/za$b;->u7:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Labcd/za$b;->VH:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Labcd/za$b;->gn:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Labcd/za$b;->VH:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v1}, Labcd/za;->tp(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v1

    new-instance v8, Ljava/lang/Long;

    iget-wide v10, p0, Labcd/za$b;->v5:J

    invoke-direct {v8, v10, v11}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v6, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v1}, Labcd/za;->EQ(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v1

    iget-object v8, p0, Labcd/za$b;->Zo:Labcd/Da;

    invoke-virtual {v1, v6, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v1}, Labcd/za;->we(Labcd/za;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Labcd/za$b;->EQ:Z

    if-eqz v1, :cond_6

    if-nez v2, :cond_4

    iget-object v0, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v0}, Labcd/za;->J0(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/za$c;

    instance-of v1, v0, Labcd/za$a;

    if-eqz v1, :cond_2

    check-cast v0, Labcd/za$a;

    move-object v2, v0

    :cond_2
    if-nez v2, :cond_3

    new-instance v2, Labcd/za$a;

    iget-object v0, p0, Labcd/za$b;->we:Labcd/za;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Labcd/za$a;-><init>(Labcd/za;Labcd/wa;)V

    :cond_3
    iget-object v0, p0, Labcd/za$b;->FH:[B

    iget v1, p0, Labcd/za$b;->Hw:I

    invoke-virtual {v2, v0, v1}, Labcd/za$a;->j6([BI)V

    :cond_4
    iget-object v0, p0, Labcd/za$b;->we:Labcd/za;

    iget-object v1, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v1}, Labcd/za;->J8(Labcd/za;)I

    move-result v1

    invoke-static {v2}, Labcd/za$a;->j6(Labcd/za$a;)I

    move-result v8

    add-int/2addr v1, v8

    invoke-static {v0, v1}, Labcd/za;->j6(Labcd/za;I)I

    iget-object v0, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v0}, Labcd/za;->J0(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, v6, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v0}, Labcd/za;->DW(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Labcd/za$b;->tp:Ljava/lang/String;

    invoke-virtual {v0, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v0}, Labcd/za;->FH(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/za$b;->DW:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v12, v13, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5
    throw v0

    :cond_6
    :try_start_1
    iget-object v1, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v1}, Labcd/za;->Hw(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v1}, Labcd/za;->Hw(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v1, v4, v8

    if-eqz v1, :cond_1

    :cond_7
    iget-object v1, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v1}, Labcd/za;->Hw(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v1

    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v6, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Labcd/za$b;->j6(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v0}, Labcd/za;->v5(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v0}, Labcd/za;->v5(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_1

    :cond_8
    if-nez v2, :cond_f

    iget-object v0, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v0}, Labcd/za;->J0(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/za$c;

    instance-of v1, v0, Labcd/za$a;

    if-eqz v1, :cond_e

    check-cast v0, Labcd/za$a;

    :goto_2
    if-nez v0, :cond_9

    new-instance v0, Labcd/za$a;

    iget-object v1, p0, Labcd/za$b;->we:Labcd/za;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Labcd/za$a;-><init>(Labcd/za;Labcd/wa;)V

    :cond_9
    iget-object v1, p0, Labcd/za$b;->FH:[B

    iget v2, p0, Labcd/za$b;->Hw:I

    invoke-virtual {v0, v1, v2}, Labcd/za$a;->j6([BI)V

    :goto_3
    iget-object v1, p0, Labcd/za$b;->we:Labcd/za;

    iget-object v2, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v2}, Labcd/za;->J8(Labcd/za;)I

    move-result v2

    invoke-static {v0}, Labcd/za$a;->j6(Labcd/za$a;)I

    move-result v8

    add-int/2addr v2, v8

    invoke-static {v1, v2}, Labcd/za;->j6(Labcd/za;I)I

    iget-object v1, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v1}, Labcd/za;->J0(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v1}, Labcd/za;->DW(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v1

    iget-object v2, p0, Labcd/za$b;->tp:Ljava/lang/String;

    invoke-virtual {v1, v6, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v1}, Labcd/za;->FH(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v1}, Labcd/za;->v5(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v1

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v6, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v0}, Labcd/za;->J0(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v0}, Labcd/za;->v5(Labcd/za;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ".class"

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x24

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/16 v0, 0x24

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v6, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ge v0, v1, :cond_1

    :cond_b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iget-object v7, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v7}, Labcd/za;->Zo(Labcd/za;)Ljava/util/HashMap;

    move-result-object v7

    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Labcd/za$b;->we:Labcd/za;

    invoke-static {v0}, Labcd/za;->j6(Labcd/za;)[B

    move-result-object v0

    if-nez v0, :cond_d

    iget-object v0, p0, Labcd/za$b;->we:Labcd/za;

    iget-object v1, p0, Labcd/za$b;->FH:[B

    invoke-static {v0, v1}, Labcd/za;->j6(Labcd/za;[B)[B

    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Labcd/za$b;->FH:[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :cond_e
    move-object v0, v2

    goto/16 :goto_2

    :cond_f
    move-object v0, v2

    goto/16 :goto_3

    :cond_10
    move-wide v4, v0

    goto/16 :goto_0
.end method

.method public write(I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xeab096575705a0L
    .end annotation

    const-wide v6, 0x5e81d33afca36ee4L

    :try_start_0
    sget-boolean v0, Labcd/za$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5e81d33afca36ee4L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget v0, p0, Labcd/za$b;->Hw:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Labcd/za$b;->FH:[B

    array-length v1, v1

    if-le v0, v1, :cond_1

    iget-object v1, p0, Labcd/za$b;->FH:[B

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    iget-object v2, p0, Labcd/za$b;->FH:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Labcd/za$b;->Hw:I

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Labcd/za$b;->FH:[B

    :cond_1
    iget-object v1, p0, Labcd/za$b;->FH:[B

    iget v2, p0, Labcd/za$b;->Hw:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    iput v0, p0, Labcd/za$b;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/za$b;->DW:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v6, v7, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public write([BII)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0xd4609b7b03c78ecL
    .end annotation

    const-wide v8, 0x121dc5146420768L    # 3.2555981100041035E-303

    :try_start_0
    sget-boolean v0, Labcd/za$b;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x121dc5146420768L    # 3.2555981100041035E-303

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/za$b;->Hw:I

    add-int/2addr v0, p3

    iget-object v1, p0, Labcd/za$b;->FH:[B

    array-length v1, v1

    if-le v0, v1, :cond_1

    iget-object v1, p0, Labcd/za$b;->FH:[B

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    iget-object v2, p0, Labcd/za$b;->FH:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Labcd/za$b;->Hw:I

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Labcd/za$b;->FH:[B

    :cond_1
    iget-object v1, p0, Labcd/za$b;->FH:[B

    iget v2, p0, Labcd/za$b;->Hw:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Labcd/za$b;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/za$b;->DW:Z

    if-eqz v0, :cond_2

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method
