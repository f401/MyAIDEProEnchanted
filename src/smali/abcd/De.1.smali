.class Labcd/De;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/De$a;,
        Labcd/De$b;,
        Labcd/De$c;,
        Labcd/De$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Labcd/De;",
        ">;"
    }
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
        field = -0x13c466c7712d7c11L
    .end annotation
.end field

.field private Hw:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x312b04fb7ef6e7ccL
    .end annotation
.end field

.field private v5:Labcd/De$c;
    .annotation runtime Labcd/ru;
        field = -0x1acd9eb4aef18598L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x1443b7e0691e26b7L    # -9.297859620873464E210

    const-class v0, Labcd/De;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x163102d5605c4b9L
    .end annotation

    const-wide v4, -0x500a22c3b4972599L    # -1.1801432969275643E-77

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/De;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x500a22c3b4972599L    # -1.1801432969275643E-77

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Labcd/De;->j6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/De;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private static j6(ZLjava/lang/String;)Labcd/De$b;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x27e83f15af20d124L
    .end annotation

    const-wide v2, -0x1049466cf4fc440L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/De;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p0}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v6, -0x1049466cf4fc440L

    const/4 v1, 0x0

    invoke-static {v6, v7, v1, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Labcd/De$a;

    invoke-direct {v0, p1}, Labcd/De$a;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Labcd/De$d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Labcd/De$d;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/De;->DW:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Labcd/De;

    invoke-virtual {p0, p1}, Labcd/De;->j6(Labcd/De;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x994c2fb9b607523L
    .end annotation

    const-wide v4, -0x1dd209685cd6345L    # -3.949660923150768E299

    :try_start_0
    sget-boolean v2, Labcd/De;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, -0x1dd209685cd6345L    # -3.949660923150768E299

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    instance-of v2, p1, Labcd/De;

    if-eqz v2, :cond_1

    iget-object v3, p0, Labcd/De;->Hw:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Labcd/De;

    move-object v2, v0

    iget-object v2, v2, Labcd/De;->Hw:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-boolean v3, Labcd/De;->DW:Z

    if-eqz v3, :cond_2

    invoke-static {v2, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v2
.end method

.method public hashCode()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x8ab12fa7a804760L
    .end annotation

    const-wide v2, -0x60b652c6e1838dcL

    :try_start_0
    sget-boolean v0, Labcd/De;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x60b652c6e1838dcL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/De;->Hw:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/De;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/De;)I
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x9a8524fd54b1a5cL
    .end annotation

    const-wide v2, 0x95ca89d55831200L

    :try_start_0
    sget-boolean v0, Labcd/De;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x95ca89d55831200L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/De;->v5:Labcd/De$c;

    iget-object v1, p1, Labcd/De;->v5:Labcd/De$c;

    invoke-virtual {v0, v1}, Labcd/De$c;->j6(Labcd/De$b;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/De;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public final j6(Ljava/lang/String;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x22ff6eb3401c48f8L
    .end annotation

    const-wide v10, 0x1e0092a2b4182500L    # 3.597395062646839E-164

    const/4 v5, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Labcd/De;->j6:Z

    if-eqz v0, :cond_0

    const-wide v2, 0x1e0092a2b4182500L    # 3.597395062646839E-164

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/De;->FH:Ljava/lang/String;

    new-instance v0, Labcd/De$c;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Labcd/De$c;-><init>(Labcd/Ce;)V

    iput-object v0, p0, Labcd/De;->v5:Labcd/De$c;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Labcd/De;->v5:Labcd/De$c;

    new-instance v7, Ljava/util/Stack;

    invoke-direct {v7}, Ljava/util/Stack;-><init>()V

    invoke-virtual {v7, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_9

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x2e

    if-ne v6, v8, :cond_3

    if-ne v3, v2, :cond_1

    sget-object v2, Labcd/De$a;->DW:Labcd/De$a;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v3, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Labcd/De;->j6(ZLjava/lang/String;)Labcd/De$b;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/De;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v10, v11, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    const/16 v8, 0x2d

    if-ne v6, v8, :cond_5

    if-ne v3, v2, :cond_4

    :try_start_1
    sget-object v2, Labcd/De$a;->DW:Labcd/De$a;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v2, v3, 0x1

    new-instance v6, Labcd/De$c;

    const/4 v8, 0x0

    invoke-direct {v6, v8}, Labcd/De$c;-><init>(Labcd/Ce;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v6

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Labcd/De;->j6(ZLjava/lang/String;)Labcd/De$b;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_7

    if-nez v0, :cond_6

    if-le v3, v2, :cond_6

    new-instance v0, Labcd/De$d;

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    invoke-direct {v0, v2, v6}, Labcd/De$d;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Labcd/De$c;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Labcd/De$c;-><init>(Labcd/Ce;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v3

    move-object v4, v0

    :cond_6
    move v0, v5

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    if-le v3, v2, :cond_8

    const/4 v0, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Labcd/De;->j6(ZLjava/lang/String;)Labcd/De$b;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Labcd/De$c;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Labcd/De$c;-><init>(Labcd/Ce;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v3

    move-object v4, v0

    :cond_8
    move v0, v1

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_a

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/De;->j6(ZLjava/lang/String;)Labcd/De$b;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_4
    invoke-virtual {v7}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/De$c;

    invoke-virtual {v0}, Labcd/De$c;->DW()V

    goto :goto_4

    :cond_b
    iget-object v0, p0, Labcd/De;->v5:Labcd/De$c;

    invoke-virtual {v0}, Labcd/De$c;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/De;->Hw:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x314d2c83dd49311L
    .end annotation

    const-wide v2, 0x4f215ebdd4f2b55L

    :try_start_0
    sget-boolean v0, Labcd/De;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4f215ebdd4f2b55L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/De;->FH:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/De;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
