.class final Labcd/PD;
.super Labcd/MD;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/PD$a;,
        Labcd/PD$b;,
        Labcd/PD$c;,
        Labcd/PD$d;,
        Labcd/PD$e;,
        Labcd/PD$f;,
        Labcd/PD$g;,
        Labcd/PD$h;,
        Labcd/PD$i;
    }
.end annotation


# static fields
.field private static final FH:Ljava/util/regex/Pattern;


# instance fields
.field private final Hw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labcd/PD$a;",
            ">;"
        }
    .end annotation
.end field

.field private final v5:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "([^-][-][^-]|\\[[.:=].*?[.:=]\\])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Labcd/PD;->FH:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/16 v8, 0x7e

    const/16 v7, 0x20

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Labcd/MD;-><init>(Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/PD;->Hw:Ljava/util/List;

    const-string v0, "!"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Labcd/PD;->v5:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    sget-object v0, Labcd/PD;->FH:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Labcd/PD;->Hw:Ljava/util/List;

    new-instance v3, Labcd/PD$f;

    invoke-direct {v3, v1}, Labcd/PD$f;-><init>(C)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x2d

    if-ne v1, v4, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-object v4, p0, Labcd/PD;->Hw:Ljava/util/List;

    new-instance v5, Labcd/PD$b;

    invoke-direct {v5, v1, v0}, Labcd/PD$b;-><init>(CC)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    goto :goto_0

    :cond_3
    const-string v1, "[:alnum:]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_3
    iget-object v0, p0, Labcd/PD;->Hw:Ljava/util/List;

    sget-object v1, Labcd/PD$d;->j6:Labcd/PD$d;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p0, Labcd/PD;->Hw:Ljava/util/List;

    sget-object v1, Labcd/PD$c;->j6:Labcd/PD$c;

    :goto_4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const-string v1, "[:alpha:]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Labcd/PD;->Hw:Ljava/util/List;

    sget-object v1, Labcd/PD$d;->j6:Labcd/PD$d;

    goto :goto_4

    :cond_6
    const-string v1, "[:blank:]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Labcd/PD;->Hw:Ljava/util/List;

    new-instance v1, Labcd/PD$f;

    invoke-direct {v1, v7}, Labcd/PD$f;-><init>(C)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Labcd/PD;->Hw:Ljava/util/List;

    new-instance v1, Labcd/PD$f;

    const/16 v4, 0x9

    invoke-direct {v1, v4}, Labcd/PD$f;-><init>(C)V

    goto :goto_4

    :cond_7
    const-string v1, "[:cntrl:]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, p0, Labcd/PD;->Hw:Ljava/util/List;

    new-instance v1, Labcd/PD$b;

    const/16 v4, 0x1f

    invoke-direct {v1, v2, v4}, Labcd/PD$b;-><init>(CC)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Labcd/PD;->Hw:Ljava/util/List;

    new-instance v1, Labcd/PD$f;

    const/16 v4, 0x7f

    invoke-direct {v1, v4}, Labcd/PD$f;-><init>(C)V

    goto :goto_4

    :cond_8
    const-string v1, "[:digit:]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "[:graph:]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, p0, Labcd/PD;->Hw:Ljava/util/List;

    new-instance v1, Labcd/PD$b;

    const/16 v4, 0x21

    invoke-direct {v1, v4, v8}, Labcd/PD$b;-><init>(CC)V

    :goto_5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    const-string v1, "[:lower:]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, p0, Labcd/PD;->Hw:Ljava/util/List;

    sget-object v1, Labcd/PD$e;->j6:Labcd/PD$e;

    goto :goto_4

    :cond_a
    const-string v1, "[:print:]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v0, p0, Labcd/PD;->Hw:Ljava/util/List;

    new-instance v1, Labcd/PD$b;

    invoke-direct {v1, v7, v8}, Labcd/PD$b;-><init>(CC)V

    goto :goto_5

    :cond_b
    const-string v1, "[:punct:]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v0, p0, Labcd/PD;->Hw:Ljava/util/List;

    sget-object v1, Labcd/PD$g;->j6:Labcd/PD$g;

    goto/16 :goto_4

    :cond_c
    const-string v1, "[:space:]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v0, p0, Labcd/PD;->Hw:Ljava/util/List;

    sget-object v1, Labcd/PD$i;->j6:Labcd/PD$i;

    goto/16 :goto_4

    :cond_d
    const-string v1, "[:upper:]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v0, p0, Labcd/PD;->Hw:Ljava/util/List;

    sget-object v1, Labcd/PD$h;->j6:Labcd/PD$h;

    goto/16 :goto_4

    :cond_e
    const-string v1, "[:xdigit:]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v0, p0, Labcd/PD;->Hw:Ljava/util/List;

    new-instance v1, Labcd/PD$b;

    const/16 v4, 0x30

    const/16 v5, 0x39

    invoke-direct {v1, v4, v5}, Labcd/PD$b;-><init>(CC)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Labcd/PD;->Hw:Ljava/util/List;

    new-instance v1, Labcd/PD$b;

    const/16 v4, 0x61

    const/16 v5, 0x66

    invoke-direct {v1, v4, v5}, Labcd/PD$b;-><init>(CC)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Labcd/PD;->Hw:Ljava/util/List;

    new-instance v1, Labcd/PD$b;

    const/16 v4, 0x41

    const/16 v5, 0x46

    invoke-direct {v1, v4, v5}, Labcd/PD$b;-><init>(CC)V

    goto/16 :goto_4

    :cond_f
    const-string v1, "[:word:]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v0, p0, Labcd/PD;->Hw:Ljava/util/List;

    new-instance v1, Labcd/PD$f;

    const/16 v4, 0x5f

    invoke-direct {v1, v4}, Labcd/PD$f;-><init>(C)V

    goto/16 :goto_5

    :cond_10
    new-instance v1, Labcd/bD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->characterClassIsNotSupported:Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p2}, Labcd/bD;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected final DW(C)Z
    .locals 2

    iget-object v0, p0, Labcd/PD;->Hw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Labcd/PD;->v5:Z

    :goto_0
    return v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/PD$a;

    invoke-interface {v0, p1}, Labcd/PD$a;->j6(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Labcd/PD;->v5:Z

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
