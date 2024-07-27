.class public Lcom/sun/tools/javac/util/RichConfiguration;
.super Lcom/sun/tools/javac/util/ForwardingConfiguration;
.source "RichConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;
    }
.end annotation


# instance fields
.field protected features:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/util/Options;Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;)V
    .registers 9

    .line 17
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->getConfiguration()Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/util/ForwardingConfiguration;-><init>(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration;)V

    .line 18
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->isRaw()Z

    move-result v0

    if-eqz v0, :cond_3

    const-class v0, Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 19
    :goto_0
    iput-object v0, p0, Lcom/sun/tools/javac/util/RichConfiguration;->features:Ljava/util/EnumSet;

    .line 22
    const-string v0, "diags"

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    if-eqz v0, :cond_7

    .line 24
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_7

    aget-object v3, v1, v0

    .line 25
    const-string v4, "-where"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 26
    iget-object v4, p0, Lcom/sun/tools/javac/util/RichConfiguration;->features:Ljava/util/EnumSet;

    sget-object v5, Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;->WHERE_CLAUSES:Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;

    invoke-virtual {v4, v5}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 30
    :cond_0
    :goto_2
    const-string v4, "-simpleNames"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 31
    iget-object v4, p0, Lcom/sun/tools/javac/util/RichConfiguration;->features:Ljava/util/EnumSet;

    sget-object v5, Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;->SIMPLE_NAMES:Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;

    invoke-virtual {v4, v5}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 35
    :cond_1
    :goto_3
    const-string v4, "-disambiguateTvars"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 36
    iget-object v3, p0, Lcom/sun/tools/javac/util/RichConfiguration;->features:Ljava/util/EnumSet;

    sget-object v4, Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;->UNIQUE_TYPEVAR_NAMES:Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 24
    :cond_2
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 19
    :cond_3
    sget-object v0, Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;->SIMPLE_NAMES:Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;

    sget-object v1, Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;->WHERE_CLAUSES:Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;

    sget-object v2, Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;->UNIQUE_TYPEVAR_NAMES:Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    .line 27
    :cond_4
    const-string v4, "where"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 28
    iget-object v4, p0, Lcom/sun/tools/javac/util/RichConfiguration;->features:Ljava/util/EnumSet;

    sget-object v5, Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;->WHERE_CLAUSES:Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;

    invoke-virtual {v4, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 32
    :cond_5
    const-string v4, "simpleNames"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 33
    iget-object v4, p0, Lcom/sun/tools/javac/util/RichConfiguration;->features:Ljava/util/EnumSet;

    sget-object v5, Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;->SIMPLE_NAMES:Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;

    invoke-virtual {v4, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 37
    :cond_6
    const-string v4, "disambiguateTvars"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 38
    iget-object v3, p0, Lcom/sun/tools/javac/util/RichConfiguration;->features:Ljava/util/EnumSet;

    sget-object v4, Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;->UNIQUE_TYPEVAR_NAMES:Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 42
    :cond_7
    return-void
.end method


# virtual methods
.method public disable(Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;)V
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichConfiguration;->features:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public enable(Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;)V
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichConfiguration;->features:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public getAvailableFeatures()[Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;
    .registers 2

    .line 50
    invoke-static {}, Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;->values()[Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled(Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;)Z
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichConfiguration;->features:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
