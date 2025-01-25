.class public Lorg/apache/tools/ant/types/resources/selectors/Name;
.super Ljava/lang/Object;
.source "Name.java"

# interfaces
.implements Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# instance fields
.field private cs:Z

.field private expression:Lorg/apache/tools/ant/util/regexp/Regexp;

.field private handleDirSep:Z

.field private pattern:Ljava/lang/String;

.field private project:Lorg/apache/tools/ant/Project;

.field private reg:Lorg/apache/tools/ant/types/RegularExpression;

.field private regex:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->regex:Ljava/lang/String;

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->cs:Z

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->handleDirSep:Z

    return-void
.end method

.method private matches(Ljava/lang/String;)Z
    .registers 5

    .line 133
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->pattern:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 134
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/resources/selectors/Name;->modify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/resources/selectors/Name;->modify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->cs:Z

    invoke-static {v0, v1, v2}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 141
    :goto_12
    return v0

    .line 136
    :cond_13
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->reg:Lorg/apache/tools/ant/types/RegularExpression;

    if-nez v0, :cond_2d

    .line 137
    new-instance v0, Lorg/apache/tools/ant/types/RegularExpression;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/RegularExpression;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->reg:Lorg/apache/tools/ant/types/RegularExpression;

    .line 138
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->regex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/RegularExpression;->setPattern(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->reg:Lorg/apache/tools/ant/types/RegularExpression;

    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/RegularExpression;->getRegexp(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/util/regexp/Regexp;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->expression:Lorg/apache/tools/ant/util/regexp/Regexp;

    .line 141
    :cond_2d
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->expression:Lorg/apache/tools/ant/util/regexp/Regexp;

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/resources/selectors/Name;->modify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->cs:Z

    invoke-static {v2}, Lorg/apache/tools/ant/util/regexp/RegexpUtil;->asOptions(Z)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/apache/tools/ant/util/regexp/Regexp;->matches(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_12
.end method

.method private modify(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 145
    if-eqz p1, :cond_e

    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->handleDirSep:Z

    if-eqz v0, :cond_e

    const-string v0, "\\"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 148
    :cond_e
    :goto_e
    return-object p1

    :cond_f
    const/16 v0, 0x5c

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    goto :goto_e
.end method


# virtual methods
.method public doesHandledirSep()Z
    .registers 2

    .line 115
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->handleDirSep:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getRegex()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->regex:Ljava/lang/String;

    return-object v0
.end method

.method public isCaseSensitive()Z
    .registers 2

    .line 95
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->cs:Z

    return v0
.end method

.method public isSelected(Lorg/apache/tools/ant/types/Resource;)Z
    .registers 5

    const/4 v0, 0x1

    .line 124
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/types/resources/selectors/Name;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 129
    :cond_b
    :goto_b
    return v0

    .line 128
    :cond_c
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->toString()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-direct {p0, v2}, Lorg/apache/tools/ant/types/resources/selectors/Name;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_1c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public setCaseSensitive(Z)V
    .registers 2

    .line 87
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->cs:Z

    .line 88
    return-void
.end method

.method public setHandleDirSep(Z)V
    .registers 2

    .line 105
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->handleDirSep:Z

    .line 106
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->pattern:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->project:Lorg/apache/tools/ant/Project;

    .line 45
    return-void
.end method

.method public setRegex(Ljava/lang/String;)V
    .registers 3

    .line 69
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->regex:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->reg:Lorg/apache/tools/ant/types/RegularExpression;

    .line 71
    return-void
.end method
