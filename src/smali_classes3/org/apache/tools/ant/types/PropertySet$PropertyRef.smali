.class public Lorg/apache/tools/ant/types/PropertySet$PropertyRef;
.super Ljava/lang/Object;
.source "PropertySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/PropertySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertyRef"
.end annotation


# instance fields
.field private builtin:Ljava/lang/String;

.field private count:I

.field private name:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private regex:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/types/PropertySet$PropertyRef;)Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/types/PropertySet$PropertyRef;)Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/tools/ant/types/PropertySet$PropertyRef;)Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->regex:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/tools/ant/types/PropertySet$PropertyRef;)Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->builtin:Ljava/lang/String;

    return-object v0
.end method

.method private assertValid(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x1

    .line 109
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 113
    iget v0, p0, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->count:I

    if-ne v0, v1, :cond_0

    .line 117
    return-void

    .line 114
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Attributes name, regex, and prefix are mutually exclusive"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid attribute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public setBuiltin(Lorg/apache/tools/ant/types/PropertySet$BuiltinPropertySetName;)V
    .registers 4

    .line 103
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/PropertySet$BuiltinPropertySetName;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 104
    const-string v1, "builtin"

    invoke-direct {p0, v1, v0}, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->assertValid(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iput-object v0, p0, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->builtin:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3

    .line 76
    const-string v0, "name"

    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->assertValid(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iput-object p1, p0, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->name:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 3

    .line 94
    const-string v0, "prefix"

    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->assertValid(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->prefix:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setRegex(Ljava/lang/String;)V
    .registers 3

    .line 85
    const-string v0, "regex"

    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->assertValid(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iput-object p1, p0, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->regex:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", regex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->regex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", prefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", builtin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->builtin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
