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
            "Ljava/util/List<",
            "Labcd/PD$a;",
            ">;"
        }
    .end annotation
.end field

.field private final v5:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "([^-][-][^-]|\\[[.:=].*?[.:=]\\])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Labcd/PD;->FH:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Labcd/MD;-><init>(Z)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Labcd/PD;->Hw:Ljava/util/List;

    const-string v1, "!"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Labcd/PD;->v5:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1a

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1a
    sget-object v1, Labcd/PD;->FH:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_20
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_3e

    :goto_26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lt v0, p2, :cond_2d

    return-void

    :cond_2d
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    iget-object v1, p0, Labcd/PD;->Hw:Ljava/util/List;

    new-instance v2, Labcd/PD$f;

    invoke-direct {v2, p2}, Labcd/PD$f;-><init>(C)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_3e
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_66

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_66

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iget-object v4, p0, Labcd/PD;->Hw:Ljava/util/List;

    new-instance v5, Labcd/PD$b;

    invoke-direct {v5, v3, p1}, Labcd/PD$b;-><init>(CC)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_172

    :cond_66
    const-string v3, "[:alnum:]"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    :goto_6e
    iget-object p1, p0, Labcd/PD;->Hw:Ljava/util/List;

    sget-object v3, Labcd/PD$d;->j6:Labcd/PD$d;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_75
    iget-object p1, p0, Labcd/PD;->Hw:Ljava/util/List;

    sget-object v3, Labcd/PD$c;->j6:Labcd/PD$c;

    :goto_79
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_172

    :cond_7e
    const-string v3, "[:alpha:]"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8b

    iget-object p1, p0, Labcd/PD;->Hw:Ljava/util/List;

    sget-object v3, Labcd/PD$d;->j6:Labcd/PD$d;

    goto :goto_79

    :cond_8b
    const-string v3, "[:blank:]"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x20

    if-eqz v3, :cond_a9

    iget-object p1, p0, Labcd/PD;->Hw:Ljava/util/List;

    new-instance v3, Labcd/PD$f;

    invoke-direct {v3, v4}, Labcd/PD$f;-><init>(C)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Labcd/PD;->Hw:Ljava/util/List;

    new-instance v3, Labcd/PD$f;

    const/16 v4, 0x9

    invoke-direct {v3, v4}, Labcd/PD$f;-><init>(C)V

    goto :goto_79

    :cond_a9
    const-string v3, "[:cntrl:]"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c7

    iget-object p1, p0, Labcd/PD;->Hw:Ljava/util/List;

    new-instance v3, Labcd/PD$b;

    const/16 v4, 0x1f

    invoke-direct {v3, v0, v4}, Labcd/PD$b;-><init>(CC)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Labcd/PD;->Hw:Ljava/util/List;

    new-instance v3, Labcd/PD$f;

    const/16 v4, 0x7f

    invoke-direct {v3, v4}, Labcd/PD$f;-><init>(C)V

    goto :goto_79

    :cond_c7
    const-string v3, "[:digit:]"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    goto :goto_75

    :cond_d0
    const-string v3, "[:graph:]"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v5, 0x7e

    if-eqz v3, :cond_e7

    iget-object p1, p0, Labcd/PD;->Hw:Ljava/util/List;

    new-instance v3, Labcd/PD$b;

    const/16 v4, 0x21

    invoke-direct {v3, v4, v5}, Labcd/PD$b;-><init>(CC)V

    :goto_e3
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    :cond_e7
    const-string v3, "[:lower:]"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f4

    iget-object p1, p0, Labcd/PD;->Hw:Ljava/util/List;

    sget-object v3, Labcd/PD$e;->j6:Labcd/PD$e;

    goto :goto_79

    :cond_f4
    const-string v3, "[:print:]"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_104

    iget-object p1, p0, Labcd/PD;->Hw:Ljava/util/List;

    new-instance v3, Labcd/PD$b;

    invoke-direct {v3, v4, v5}, Labcd/PD$b;-><init>(CC)V

    goto :goto_e3

    :cond_104
    const-string v3, "[:punct:]"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_112

    iget-object p1, p0, Labcd/PD;->Hw:Ljava/util/List;

    sget-object v3, Labcd/PD$g;->j6:Labcd/PD$g;

    goto/16 :goto_79

    :cond_112
    const-string v3, "[:space:]"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    iget-object p1, p0, Labcd/PD;->Hw:Ljava/util/List;

    sget-object v3, Labcd/PD$i;->j6:Labcd/PD$i;

    goto/16 :goto_79

    :cond_120
    const-string v3, "[:upper:]"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12e

    iget-object p1, p0, Labcd/PD;->Hw:Ljava/util/List;

    sget-object v3, Labcd/PD$h;->j6:Labcd/PD$h;

    goto/16 :goto_79

    :cond_12e
    const-string v3, "[:xdigit:]"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15f

    iget-object p1, p0, Labcd/PD;->Hw:Ljava/util/List;

    new-instance v3, Labcd/PD$b;

    const/16 v4, 0x30

    const/16 v5, 0x39

    invoke-direct {v3, v4, v5}, Labcd/PD$b;-><init>(CC)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Labcd/PD;->Hw:Ljava/util/List;

    new-instance v3, Labcd/PD$b;

    const/16 v4, 0x61

    const/16 v5, 0x66

    invoke-direct {v3, v4, v5}, Labcd/PD$b;-><init>(CC)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Labcd/PD;->Hw:Ljava/util/List;

    new-instance v3, Labcd/PD$b;

    const/16 v4, 0x41

    const/16 v5, 0x46

    invoke-direct {v3, v4, v5}, Labcd/PD$b;-><init>(CC)V

    goto/16 :goto_79

    :cond_15f
    const-string v3, "[:word:]"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17d

    iget-object p1, p0, Labcd/PD;->Hw:Ljava/util/List;

    new-instance v3, Labcd/PD$f;

    const/16 v4, 0x5f

    invoke-direct {v3, v4}, Labcd/PD$f;-><init>(C)V

    goto/16 :goto_e3

    :goto_172
    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    goto/16 :goto_20

    :cond_17d
    new-instance v1, Labcd/bD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->characterClassIsNotSupported:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Labcd/bD;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_198

    :goto_197
    throw v1

    :goto_198
    goto :goto_197
.end method


# virtual methods
.method protected final DW(C)Z
    .registers 4

    iget-object v0, p0, Labcd/PD;->Hw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_f

    iget-boolean p1, p0, Labcd/PD;->v5:Z

    return p1

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/PD$a;

    invoke-interface {v1, p1}, Labcd/PD$a;->j6(C)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean p1, p0, Labcd/PD;->v5:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
