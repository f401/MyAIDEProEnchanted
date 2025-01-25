.class public Lcom/aide/uidesigner/a;
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
.field public final FH:Lcom/aide/uidesigner/N$a;

.field public final Hw:Ljava/lang/String;

.field public final v5:Lorg/w3c/dom/Attr;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/uidesigner/a;

    const-wide v1, 0x6541e0d7b2c28540L  # 5.795800630608534E179

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/uidesigner/N$a;)V
    .registers 7

    const-wide v0, -0x77f3f0cbc088388L  # -2.832286205591609E272

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Lcom/aide/uidesigner/a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    iput-object v2, p0, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    iput-object v2, p0, Lcom/aide/uidesigner/a;->v5:Lorg/w3c/dom/Attr;
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v3

    sget-boolean v4, Lcom/aide/uidesigner/a;->DW:Z

    if-eqz v4, :cond_1f

    invoke-static {v3, v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v3
.end method

.method public constructor <init>(Lcom/aide/uidesigner/N$a;Ljava/lang/String;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/a;->j6:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-wide v2, 0x16a2b6a36aa43044L

    invoke-static {v2, v3, v1, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    iput-object p2, p0, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    iput-object v1, p0, Lcom/aide/uidesigner/a;->v5:Lorg/w3c/dom/Attr;
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/a;->DW:Z

    if-eqz v1, :cond_28

    const-wide v2, 0x16a2b6a36aa43044L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_28
    throw v0
.end method

.method public constructor <init>(Lcom/aide/uidesigner/N$a;Lorg/w3c/dom/Attr;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/a;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x358ffde5311211d8L  # -3.743366723888903E50

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    invoke-interface {p2}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    iput-object p2, p0, Lcom/aide/uidesigner/a;->v5:Lorg/w3c/dom/Attr;
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/a;->DW:Z

    if-eqz v1, :cond_2c

    const-wide v2, -0x358ffde5311211d8L  # -3.743366723888903E50

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v0
.end method

.method public static j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    const-wide v1, 0x139b7cecb65b70b0L

    :try_start_6
    sget-boolean v3, Lcom/aide/uidesigner/a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    if-nez p0, :cond_10

    return-object p0

    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_17

    return-object p0

    :cond_17
    const-string v3, "@id/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_25
    const-string v3, "?android:attr/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_44

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Android_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xe

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_44
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_50

    return-object p0

    :cond_50
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_63
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_9c

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eqz v7, :cond_78

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    goto :goto_99

    :cond_78
    const/16 v9, 0x7c

    if-ne v8, v9, :cond_82

    const-string v7, " | "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_81
    .catchall {:try_start_6 .. :try_end_81} :catchall_a1

    goto :goto_8b

    :cond_82
    const/16 v9, 0x5f

    const-string v10, " "

    if-ne v8, v9, :cond_8d

    :try_start_88
    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_8b
    const/4 v7, 0x1

    goto :goto_99

    :cond_8d
    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v9

    if-eqz v9, :cond_96

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_96
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_99
    add-int/lit8 v6, v6, 0x1

    goto :goto_63

    :cond_9c
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_a0
    .catchall {:try_start_88 .. :try_end_a0} :catchall_a1

    return-object p0

    :catchall_a1
    move-exception v3

    sget-boolean v4, Lcom/aide/uidesigner/a;->DW:Z

    if-eqz v4, :cond_a9

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_a9
    goto :goto_ab

    :goto_aa
    throw v3

    :goto_ab
    goto :goto_aa
.end method


# virtual methods
.method public DW()Z
    .registers 5

    const-wide v0, 0x1796c177aa6dd700L  # 4.870725252815755E-195

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_14

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/a;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public FH()Z
    .registers 5

    const-wide v0, -0x1b8d944808888a20L  # -7.289628621669848E175

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/uidesigner/a;->DW()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v0, p0, Lcom/aide/uidesigner/a;->v5:Lorg/w3c/dom/Attr;
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1a

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/a;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public j6()Ljava/lang/String;
    .registers 6

    const-string v0, "&quot;"

    const-wide v1, -0x3099ddc793953b94L  # -3.1285452780462163E74

    :try_start_7
    sget-boolean v3, Lcom/aide/uidesigner/a;->j6:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_e
    iget-object v3, p0, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    iget-object v3, v3, Lcom/aide/uidesigner/N$a;->VH:Lcom/aide/uidesigner/N$b;

    sget-object v4, Lcom/aide/uidesigner/N$b;->VH:Lcom/aide/uidesigner/N$b;

    if-ne v3, v4, :cond_2b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2b
    iget-object v0, p0, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    invoke-static {v0}, Lcom/aide/uidesigner/a;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_32

    return-object v0

    :catchall_32
    move-exception v0

    sget-boolean v3, Lcom/aide/uidesigner/a;->DW:Z

    if-eqz v3, :cond_3a

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3a
    throw v0
.end method
