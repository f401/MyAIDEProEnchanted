.class public Lcom/sun/tools/javac/main/JavacOption$Option;
.super Ljava/lang/Object;
.source "JavacOption.java"

# interfaces
.implements Lcom/sun/tools/javac/main/JavacOption;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/main/JavacOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Option"
.end annotation


# instance fields
.field argsNameKey:Ljava/lang/String;

.field choiceKind:Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;

.field choices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field descrKey:Ljava/lang/String;

.field hasSuffix:Z

.field name:Lcom/sun/tools/javac/main/OptionName;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;)V
    .registers 4

    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/sun/tools/javac/main/JavacOption$Option;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method constructor <init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/main/OptionName;",
            "Ljava/lang/String;",
            "Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 155
    invoke-direct {p0, p1, v0, p2}, Lcom/sun/tools/javac/main/JavacOption$Option;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    if-eqz p3, :cond_d

    if-eqz p4, :cond_d

    .line 158
    iput-object p3, p0, Lcom/sun/tools/javac/main/JavacOption$Option;->choiceKind:Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;

    .line 159
    iput-object p4, p0, Lcom/sun/tools/javac/main/JavacOption$Option;->choices:Ljava/util/Map;

    .line 160
    return-void

    .line 157
    :cond_d
    throw v0
.end method

.method varargs constructor <init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;[Ljava/lang/String;)V
    .registers 6

    .line 143
    invoke-static {p4}, Lcom/sun/tools/javac/main/JavacOption$Option;->createChoices([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sun/tools/javac/main/JavacOption$Option;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;Ljava/util/Map;)V

    .line 144
    return-void
.end method

.method constructor <init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/sun/tools/javac/main/JavacOption$Option;->name:Lcom/sun/tools/javac/main/OptionName;

    .line 132
    iput-object p2, p0, Lcom/sun/tools/javac/main/JavacOption$Option;->argsNameKey:Ljava/lang/String;

    .line 133
    iput-object p3, p0, Lcom/sun/tools/javac/main/JavacOption$Option;->descrKey:Ljava/lang/String;

    .line 134
    iget-object v1, p1, Lcom/sun/tools/javac/main/OptionName;->optionName:Ljava/lang/String;

    iget-object v0, p1, Lcom/sun/tools/javac/main/OptionName;->optionName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 135
    const/16 v2, 0x3a

    if-eq v1, v2, :cond_20

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_23

    :cond_20
    :goto_20
    iput-boolean v0, p0, Lcom/sun/tools/javac/main/JavacOption$Option;->hasSuffix:Z

    .line 136
    return-void

    .line 135
    :cond_23
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private static varargs createChoices([Ljava/lang/String;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 147
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 148
    array-length v3, p0

    move v0, v1

    :goto_8
    if-ge v0, v3, :cond_16

    aget-object v4, p0, v0

    .line 149
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 150
    :cond_16
    return-object v2
.end method


# virtual methods
.method public getKind()Lcom/sun/tools/javac/main/JavacOption$OptionKind;
    .registers 2

    .line 277
    sget-object v0, Lcom/sun/tools/javac/main/JavacOption$OptionKind;->NORMAL:Lcom/sun/tools/javac/main/JavacOption$OptionKind;

    return-object v0
.end method

.method public getName()Lcom/sun/tools/javac/main/OptionName;
    .registers 2

    .line 281
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavacOption$Option;->name:Lcom/sun/tools/javac/main/OptionName;

    return-object v0
.end method

.method public hasArg()Z
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavacOption$Option;->argsNameKey:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/sun/tools/javac/main/JavacOption$Option;->hasSuffix:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method help(Ljava/io/PrintWriter;)V
    .registers 4

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/tools/javac/main/JavacOption$Option;->helpSynopsis()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1c

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_22
    const/16 v1, 0x1d

    if-ge v0, v1, :cond_2e

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 202
    :cond_2e
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavacOption$Option;->descrKey:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sun/tools/javac/main/Main;->getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sun/tools/javac/util/Log;->printLines(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method helpSynopsis()Ljava/lang/String;
    .registers 6

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavacOption$Option;->name:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavacOption$Option;->argsNameKey:Ljava/lang/String;

    if-nez v0, :cond_4f

    .line 209
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavacOption$Option;->choices:Ljava/util/Map;

    if-eqz v1, :cond_4a

    .line 210
    const-string v0, "{"

    .line 211
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v0

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 212
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_65

    .line 213
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string v0, ","

    :goto_43
    move-object v2, v0

    .line 217
    goto :goto_1d

    .line 218
    :cond_45
    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_4a
    :goto_4a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 221
    :cond_4f
    iget-boolean v0, p0, Lcom/sun/tools/javac/main/JavacOption$Option;->hasSuffix:Z

    if-nez v0, :cond_58

    .line 222
    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_58
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavacOption$Option;->argsNameKey:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sun/tools/javac/main/Main;->getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4a

    :cond_65
    move-object v0, v2

    goto :goto_43
.end method

.method public matches(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    .line 172
    iget-boolean v1, p0, Lcom/sun/tools/javac/main/JavacOption$Option;->hasSuffix:Z

    if-nez v1, :cond_e

    .line 173
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavacOption$Option;->name:Lcom/sun/tools/javac/main/OptionName;

    iget-object v0, v0, Lcom/sun/tools/javac/main/OptionName;->optionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 190
    :cond_d
    :goto_d
    return v0

    .line 175
    :cond_e
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavacOption$Option;->name:Lcom/sun/tools/javac/main/OptionName;

    iget-object v1, v1, Lcom/sun/tools/javac/main/OptionName;->optionName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 178
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavacOption$Option;->choices:Ljava/util/Map;

    if-eqz v1, :cond_54

    .line 179
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavacOption$Option;->name:Lcom/sun/tools/javac/main/OptionName;

    iget-object v1, v1, Lcom/sun/tools/javac/main/OptionName;->optionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 180
    iget-object v2, p0, Lcom/sun/tools/javac/main/JavacOption$Option;->choiceKind:Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;

    sget-object v3, Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;->ONEOF:Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;

    if-ne v2, v3, :cond_39

    .line 181
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavacOption$Option;->choices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_d

    .line 183
    :cond_39
    const-string v2, ",+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_41
    if-ge v1, v3, :cond_54

    aget-object v4, v2, v1

    .line 184
    iget-object v5, p0, Lcom/sun/tools/javac/main/JavacOption$Option;->choices:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 190
    :cond_54
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public process(Lcom/sun/tools/javac/util/Options;Ljava/lang/String;)Z
    .registers 5

    .line 270
    iget-boolean v0, p0, Lcom/sun/tools/javac/main/JavacOption$Option;->hasSuffix:Z

    if-eqz v0, :cond_19

    .line 271
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavacOption$Option;->name:Lcom/sun/tools/javac/main/OptionName;

    iget-object v0, v0, Lcom/sun/tools/javac/main/OptionName;->optionName:Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/tools/javac/main/JavacOption$Option;->name:Lcom/sun/tools/javac/main/OptionName;

    iget-object v1, v1, Lcom/sun/tools/javac/main/OptionName;->optionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/tools/javac/main/JavacOption$Option;->process(Lcom/sun/tools/javac/util/Options;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 273
    :goto_18
    return v0

    :cond_19
    invoke-virtual {p0, p1, p2, p2}, Lcom/sun/tools/javac/main/JavacOption$Option;->process(Lcom/sun/tools/javac/util/Options;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_18
.end method

.method public process(Lcom/sun/tools/javac/util/Options;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/4 v1, 0x0

    .line 241
    if-eqz p1, :cond_58

    .line 242
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavacOption$Option;->choices:Ljava/util/Map;

    if-eqz v0, :cond_55

    .line 243
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavacOption$Option;->choiceKind:Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;

    sget-object v2, Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;->ONEOF:Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;

    if-ne v0, v2, :cond_59

    .line 245
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavacOption$Option;->choices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/util/Options;->remove(Ljava/lang/String;)V

    goto :goto_17

    .line 247
    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-virtual {p1, v0, v0}, Lcom/sun/tools/javac/util/Options;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-virtual {p1, v0, p3}, Lcom/sun/tools/javac/util/Options;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_55
    invoke-virtual {p1, p2, p3}, Lcom/sun/tools/javac/util/Options;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_58
    return v1

    .line 255
    :cond_59
    const-string v0, ",+"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_61
    if-ge v0, v3, :cond_55

    aget-object v4, v2, v0

    .line 256
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 257
    invoke-virtual {p1, v4, v4}, Lcom/sun/tools/javac/util/Options;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_61
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavacOption$Option;->name:Lcom/sun/tools/javac/main/OptionName;

    iget-object v0, v0, Lcom/sun/tools/javac/main/OptionName;->optionName:Ljava/lang/String;

    return-object v0
.end method

.method xhelp(Ljava/io/PrintWriter;)V
    .registers 2

    .line 235
    return-void
.end method
