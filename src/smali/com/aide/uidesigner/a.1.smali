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
    .registers 4

    const-wide v2, 0x6541e0d7b2c28540L    # 5.795800630608534E179

    const-class v0, Lcom/aide/uidesigner/a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/uidesigner/N$a;)V
    .registers 8

    const-wide v4, -0x77f3f0cbc088388L    # -2.832286205591609E272

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x77f3f0cbc088388L    # -2.832286205591609E272

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/uidesigner/a;->v5:Lorg/w3c/dom/Attr;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Lcom/aide/uidesigner/N$a;Ljava/lang/String;)V
    .registers 10

    const-wide v2, 0x16a2b6a36aa43044L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x16a2b6a36aa43044L

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    iput-object p2, p0, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/uidesigner/a;->v5:Lorg/w3c/dom/Attr;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/a;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public constructor <init>(Lcom/aide/uidesigner/N$a;Lorg/w3c/dom/Attr;)V
    .registers 10

    const-wide v2, -0x358ffde5311211d8L    # -3.743366723888903E50

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x358ffde5311211d8L    # -3.743366723888903E50

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    invoke-interface {p2}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    iput-object p2, p0, Lcom/aide/uidesigner/a;->v5:Lorg/w3c/dom/Attr;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/a;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public static j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const-wide v8, 0x139b7cecb65b70b0L

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v4, 0x139b7cecb65b70b0L

    const/4 v0, 0x0

    invoke-static {v4, v5, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p0, :cond_2

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "@id/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const-string v0, "?android:attr/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    move v2, v3

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_a

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eqz v2, :cond_5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v3

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/16 v6, 0x7c

    if-ne v5, v6, :cond_6

    const-string v2, " | "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    move v2, v1

    goto :goto_2

    :cond_6
    const/16 v6, 0x5f

    if-ne v5, v6, :cond_8

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/a;->DW:Z

    if-eqz v1, :cond_7

    invoke-static {v0, v8, v9, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    throw v0

    :cond_8
    :try_start_1
    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_a
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p0

    goto/16 :goto_0
.end method


# virtual methods
.method public DW()Z
    .registers 5

    const-wide v2, 0x1796c177aa6dd700L    # 4.870725252815755E-195

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1796c177aa6dd700L    # 4.870725252815755E-195

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/a;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public FH()Z
    .registers 5

    const-wide v2, -0x1b8d944808888a20L    # -7.289628621669848E175

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1b8d944808888a20L    # -7.289628621669848E175

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/uidesigner/a;->DW()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/uidesigner/a;->v5:Lorg/w3c/dom/Attr;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/a;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6()Ljava/lang/String;
    .registers 5

    const-wide v2, -0x3099ddc793953b94L    # -3.1285452780462163E74

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3099ddc793953b94L    # -3.1285452780462163E74

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    iget-object v0, v0, Lcom/aide/uidesigner/N$a;->VH:Lcom/aide/uidesigner/N$b;

    sget-object v1, Lcom/aide/uidesigner/N$b;->VH:Lcom/aide/uidesigner/N$b;

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&quot;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&quot;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    invoke-static {v0}, Lcom/aide/uidesigner/a;->j6(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/a;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method
