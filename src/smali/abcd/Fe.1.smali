.class public Labcd/Fe;
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
.field private FH:Ljava/lang/Integer;
    .annotation runtime Labcd/ru;
        field = 0x352acbd4a82a3203L
    .end annotation
.end field

.field private Hw:Ljava/lang/Integer;
    .annotation runtime Labcd/ru;
        field = 0xb01f18fc9ac7d3L
    .end annotation
.end field

.field private VH:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x2aa7535a5d746180L
    .end annotation
.end field

.field private Zo:Ljava/lang/Integer;
    .annotation runtime Labcd/ru;
        field = 0x2c39c2409276532bL
    .end annotation
.end field

.field private gn:Labcd/De;
    .annotation runtime Labcd/ru;
        field = -0x98360d14ea4af30L
    .end annotation
.end field

.field private v5:Ljava/lang/Integer;
    .annotation runtime Labcd/ru;
        field = -0x2e5cfef241fa4fc0L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x175bb9268e081b5L    # -3.518204381760006E301

    const-class v0, Labcd/Fe;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8

    const-wide v4, -0x32f400dc7db88f2fL    # -1.4396434820247882E63

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Fe;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x32f400dc7db88f2fL    # -1.4396434820247882E63

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Labcd/Fe;->j6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Fe;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    const-wide v2, -0xc74e3e9d4b27d00L    # -3.790978875601194E248

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Fe;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xc74e3e9d4b27d00L    # -3.790978875601194E248

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Labcd/Fe;

    invoke-direct {v0, p0}, Labcd/Fe;-><init>(Ljava/lang/String;)V

    new-instance v1, Labcd/Fe;

    invoke-direct {v1, p1}, Labcd/Fe;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Labcd/Fe;->j6(Labcd/Fe;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Fe;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private static j6(Ljava/util/StringTokenizer;)Ljava/lang/Integer;
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x2fe7f07055382e0dL
    .end annotation

    const-wide v6, 0x92497527ae32367L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Fe;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x92497527ae32367L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number part has a leading 0: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Number is invalid"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    sget-boolean v1, Labcd/Fe;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v6, v7, v4, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 12

    const-wide v8, -0xbc4ab9b1a68b01L

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v2, Labcd/Fe;->j6:Z

    if-eqz v2, :cond_0

    const-wide v6, -0xbc4ab9b1a68b01L

    invoke-static {v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-ne p0, p1, :cond_1

    :goto_0
    return v3

    :cond_1
    instance-of v2, p1, Labcd/Fe;

    if-nez v2, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Labcd/Fe;

    move-object v2, v0

    invoke-virtual {p0, v2}, Labcd/Fe;->j6(Labcd/Fe;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :catch_0
    move-exception v2

    sget-boolean v3, Labcd/Fe;->DW:Z

    if-eqz v3, :cond_4

    invoke-static {v2, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v2
.end method

.method public hashCode()I
    .registers 5

    const-wide v2, 0x2016cf17e06a8e8cL

    :try_start_0
    sget-boolean v0, Labcd/Fe;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2016cf17e06a8e8cL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Fe;->gn:Labcd/De;

    invoke-virtual {v0}, Labcd/De;->hashCode()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/lit8 v0, v0, 0xb

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Fe;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/Fe;)I
    .registers 6

    const-wide v2, -0x3d42547d57708d8L    # -1.357248040444478E290

    :try_start_0
    sget-boolean v0, Labcd/Fe;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3d42547d57708d8L    # -1.357248040444478E290

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    instance-of v0, p1, Labcd/Fe;

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Fe;->gn:Labcd/De;

    iget-object v1, p1, Labcd/Fe;->gn:Labcd/De;

    invoke-virtual {v0, v1}, Labcd/De;->j6(Labcd/De;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Labcd/Fe;

    invoke-virtual {p1}, Labcd/Fe;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/Fe;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Labcd/Fe;->j6(Labcd/Fe;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Fe;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public final j6(Ljava/lang/String;)V
    .registers 10

    const-wide v6, -0x3fc2df2b1e0c58L

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    sget-boolean v3, Labcd/Fe;->j6:Z

    if-eqz v3, :cond_0

    const-wide v4, -0x3fc2df2b1e0c58L

    invoke-static {v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v3, Labcd/De;

    invoke-direct {v3, p1}, Labcd/De;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Labcd/Fe;->gn:Labcd/De;

    const-string v3, "-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-gez v4, :cond_4

    move-object v3, p1

    :goto_0
    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, v1, :cond_1

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Labcd/Fe;->Zo:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    :try_start_2
    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    if-nez v2, :cond_7

    :try_start_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Labcd/Fe;->FH:Ljava/lang/Integer;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_2
    return-void

    :cond_4
    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v4, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v2

    goto :goto_0

    :cond_5
    :try_start_5
    iput-object v2, p0, Labcd/Fe;->VH:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_6
    iput-object v2, p0, Labcd/Fe;->VH:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-boolean v1, Labcd/Fe;->DW:Z

    if-eqz v1, :cond_6

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    throw v0

    :catch_2
    move-exception v0

    :try_start_7
    iput-object p1, p0, Labcd/Fe;->VH:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Fe;->Zo:Ljava/lang/Integer;

    goto :goto_2

    :cond_7
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, "."

    invoke-direct {v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    :try_start_8
    invoke-static {v2}, Labcd/Fe;->j6(Ljava/util/StringTokenizer;)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Labcd/Fe;->FH:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {v2}, Labcd/Fe;->j6(Ljava/util/StringTokenizer;)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Labcd/Fe;->Hw:Ljava/lang/Integer;

    :cond_8
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {v2}, Labcd/Fe;->j6(Ljava/util/StringTokenizer;)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Labcd/Fe;->v5:Ljava/lang/Integer;

    :cond_9
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/Fe;->VH:Ljava/lang/String;

    const-string v0, "\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v2, p0, Labcd/Fe;->VH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    :cond_a
    const-string v2, ".."

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    move-result v2

    if-eqz v2, :cond_b

    move v0, v1

    :cond_b
    :goto_3
    if-eqz v0, :cond_3

    :try_start_9
    iput-object p1, p0, Labcd/Fe;->VH:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Fe;->FH:Ljava/lang/Integer;

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Fe;->Hw:Ljava/lang/Integer;

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Fe;->v5:Ljava/lang/Integer;

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Fe;->Zo:Ljava/lang/Integer;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_2

    :catch_3
    move-exception v0

    move v0, v1

    goto :goto_3

    :cond_c
    move v0, v1

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x2acbeb4a59611f41L

    :try_start_0
    sget-boolean v0, Labcd/Fe;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2acbeb4a59611f41L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Fe;->gn:Labcd/De;

    invoke-virtual {v0}, Labcd/De;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Fe;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
