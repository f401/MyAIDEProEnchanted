.class public Lcom/sun/tools/javac/util/Options;
.super Ljava/lang/Object;
.source "Options.java"


# static fields
.field public static final optionsKey:Lcom/sun/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Context$Key",
            "<",
            "Lcom/sun/tools/javac/util/Options;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private values:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/util/Options;->optionsKey:Lcom/sun/tools/javac/util/Context$Key;

    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/util/Options;->values:Ljava/util/LinkedHashMap;

    .line 61
    sget-object v0, Lcom/sun/tools/javac/util/Options;->optionsKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Options;
    .registers 2

    .line 52
    sget-object v0, Lcom/sun/tools/javac/util/Options;->optionsKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/Options;

    .line 53
    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/sun/tools/javac/util/Options;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/util/Options;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 55
    :cond_0
    return-object v0
.end method


# virtual methods
.method public get(Lcom/sun/tools/javac/main/OptionName;)Ljava/lang/String;
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/sun/tools/javac/util/Options;->values:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/sun/tools/javac/main/OptionName;->optionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/sun/tools/javac/util/Options;->values:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 3

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/util/Options;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 4

    .line 90
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0
.end method

.method public isSet(Lcom/sun/tools/javac/main/OptionName;)Z
    .registers 4

    .line 105
    iget-object v0, p0, Lcom/sun/tools/javac/util/Options;->values:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/sun/tools/javac/main/OptionName;->optionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSet(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;)Z
    .registers 6

    .line 112
    iget-object v0, p0, Lcom/sun/tools/javac/util/Options;->values:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/sun/tools/javac/main/OptionName;->optionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSet(Ljava/lang/String;)Z
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/sun/tools/javac/util/Options;->values:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnset(Lcom/sun/tools/javac/main/OptionName;)Z
    .registers 4

    .line 126
    iget-object v0, p0, Lcom/sun/tools/javac/util/Options;->values:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/sun/tools/javac/main/OptionName;->optionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnset(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;)Z
    .registers 6

    .line 133
    iget-object v0, p0, Lcom/sun/tools/javac/util/Options;->values:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/sun/tools/javac/main/OptionName;->optionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnset(Ljava/lang/String;)Z
    .registers 3

    .line 119
    iget-object v0, p0, Lcom/sun/tools/javac/util/Options;->values:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/sun/tools/javac/util/Options;->values:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public lint(Ljava/lang/String;)Z
    .registers 5

    .line 165
    sget-object v0, Lcom/sun/tools/javac/main/OptionName;->XLINT_CUSTOM:Lcom/sun/tools/javac/main/OptionName;

    .line 166
    invoke-virtual {p0, v0, p1}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sun/tools/javac/main/OptionName;->XLINT:Lcom/sun/tools/javac/main/OptionName;

    .line 167
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sun/tools/javac/main/OptionName;->XLINT_CUSTOM:Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "all"

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/sun/tools/javac/main/OptionName;->XLINT_CUSTOM:Lcom/sun/tools/javac/main/OptionName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/util/Options;->isUnset(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 165
    :goto_0
    return v0

    .line 168
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;)V
    .registers 5

    .line 141
    iget-object v0, p0, Lcom/sun/tools/javac/util/Options;->values:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/sun/tools/javac/main/OptionName;->optionName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 137
    iget-object v0, p0, Lcom/sun/tools/javac/util/Options;->values:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method

.method public putAll(Lcom/sun/tools/javac/util/Options;)V
    .registers 4

    .line 145
    iget-object v0, p0, Lcom/sun/tools/javac/util/Options;->values:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/sun/tools/javac/util/Options;->values:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 146
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/sun/tools/javac/util/Options;->values:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    return-void
.end method

.method public size()I
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/sun/tools/javac/util/Options;->values:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method
