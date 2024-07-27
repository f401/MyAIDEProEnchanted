.class public Lorg/json2/XMLParserConfiguration;
.super Ljava/lang/Object;


# static fields
.field public static final KEEP_STRINGS:Lorg/json2/XMLParserConfiguration;

.field public static final ORIGINAL:Lorg/json2/XMLParserConfiguration;


# instance fields
.field private cDataTagName:Ljava/lang/String;

.field private convertNilAttributeToNull:Z

.field private forceList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private keepStrings:Z

.field private xsiTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/json2/XMLXsiTypeConverter",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/json2/XMLParserConfiguration;

    invoke-direct {v0}, Lorg/json2/XMLParserConfiguration;-><init>()V

    sput-object v0, Lorg/json2/XMLParserConfiguration;->ORIGINAL:Lorg/json2/XMLParserConfiguration;

    new-instance v0, Lorg/json2/XMLParserConfiguration;

    invoke-direct {v0}, Lorg/json2/XMLParserConfiguration;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/json2/XMLParserConfiguration;->withKeepStrings(Z)Lorg/json2/XMLParserConfiguration;

    move-result-object v0

    sput-object v0, Lorg/json2/XMLParserConfiguration;->KEEP_STRINGS:Lorg/json2/XMLParserConfiguration;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lorg/json2/XMLParserConfiguration;->keepStrings:Z

    const-string v0, "content"

    iput-object v0, p0, Lorg/json2/XMLParserConfiguration;->cDataTagName:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/json2/XMLParserConfiguration;->convertNilAttributeToNull:Z

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/json2/XMLParserConfiguration;->xsiTypeMap:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/json2/XMLParserConfiguration;->forceList:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lorg/json2/XMLParserConfiguration;-><init>(ZLjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "content"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/json2/XMLParserConfiguration;-><init>(ZLjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/json2/XMLParserConfiguration;->keepStrings:Z

    iput-object p2, p0, Lorg/json2/XMLParserConfiguration;->cDataTagName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/json2/XMLParserConfiguration;->convertNilAttributeToNull:Z

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/json2/XMLParserConfiguration;->keepStrings:Z

    iput-object p2, p0, Lorg/json2/XMLParserConfiguration;->cDataTagName:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/json2/XMLParserConfiguration;->convertNilAttributeToNull:Z

    return-void
.end method

.method private constructor <init>(ZLjava/lang/String;ZLjava/util/Map;Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/json2/XMLXsiTypeConverter",
            "<*>;>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/json2/XMLParserConfiguration;->keepStrings:Z

    iput-object p2, p0, Lorg/json2/XMLParserConfiguration;->cDataTagName:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/json2/XMLParserConfiguration;->convertNilAttributeToNull:Z

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/json2/XMLParserConfiguration;->xsiTypeMap:Ljava/util/Map;

    invoke-static {p5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/json2/XMLParserConfiguration;->forceList:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method protected bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/json2/XMLParserConfiguration;->clone()Lorg/json2/XMLParserConfiguration;

    move-result-object v0

    return-object v0
.end method

.method protected clone()Lorg/json2/XMLParserConfiguration;
    .registers 7

    new-instance v0, Lorg/json2/XMLParserConfiguration;

    iget-boolean v1, p0, Lorg/json2/XMLParserConfiguration;->keepStrings:Z

    iget-object v2, p0, Lorg/json2/XMLParserConfiguration;->cDataTagName:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/json2/XMLParserConfiguration;->convertNilAttributeToNull:Z

    iget-object v4, p0, Lorg/json2/XMLParserConfiguration;->xsiTypeMap:Ljava/util/Map;

    iget-object v5, p0, Lorg/json2/XMLParserConfiguration;->forceList:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Lorg/json2/XMLParserConfiguration;-><init>(ZLjava/lang/String;ZLjava/util/Map;Ljava/util/Set;)V

    return-object v0
.end method

.method public getForceList()Ljava/util/Set;
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

    iget-object v0, p0, Lorg/json2/XMLParserConfiguration;->forceList:Ljava/util/Set;

    return-object v0
.end method

.method public getXsiTypeMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/json2/XMLXsiTypeConverter",
            "<*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/json2/XMLParserConfiguration;->xsiTypeMap:Ljava/util/Map;

    return-object v0
.end method

.method public getcDataTagName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/json2/XMLParserConfiguration;->cDataTagName:Ljava/lang/String;

    return-object v0
.end method

.method public isConvertNilAttributeToNull()Z
    .registers 2

    iget-boolean v0, p0, Lorg/json2/XMLParserConfiguration;->convertNilAttributeToNull:Z

    return v0
.end method

.method public isKeepStrings()Z
    .registers 2

    iget-boolean v0, p0, Lorg/json2/XMLParserConfiguration;->keepStrings:Z

    return v0
.end method

.method public withConvertNilAttributeToNull(Z)Lorg/json2/XMLParserConfiguration;
    .registers 3

    invoke-virtual {p0}, Lorg/json2/XMLParserConfiguration;->clone()Lorg/json2/XMLParserConfiguration;

    move-result-object v0

    iput-boolean p1, v0, Lorg/json2/XMLParserConfiguration;->convertNilAttributeToNull:Z

    return-object v0
.end method

.method public withForceList(Ljava/util/Set;)Lorg/json2/XMLParserConfiguration;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json2/XMLParserConfiguration;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/json2/XMLParserConfiguration;->clone()Lorg/json2/XMLParserConfiguration;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lorg/json2/XMLParserConfiguration;->forceList:Ljava/util/Set;

    return-object v0
.end method

.method public withKeepStrings(Z)Lorg/json2/XMLParserConfiguration;
    .registers 3

    invoke-virtual {p0}, Lorg/json2/XMLParserConfiguration;->clone()Lorg/json2/XMLParserConfiguration;

    move-result-object v0

    iput-boolean p1, v0, Lorg/json2/XMLParserConfiguration;->keepStrings:Z

    return-object v0
.end method

.method public withXsiTypeMap(Ljava/util/Map;)Lorg/json2/XMLParserConfiguration;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/json2/XMLXsiTypeConverter",
            "<*>;>;)",
            "Lorg/json2/XMLParserConfiguration;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/json2/XMLParserConfiguration;->clone()Lorg/json2/XMLParserConfiguration;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lorg/json2/XMLParserConfiguration;->xsiTypeMap:Ljava/util/Map;

    return-object v0
.end method

.method public withcDataTagName(Ljava/lang/String;)Lorg/json2/XMLParserConfiguration;
    .registers 3

    invoke-virtual {p0}, Lorg/json2/XMLParserConfiguration;->clone()Lorg/json2/XMLParserConfiguration;

    move-result-object v0

    iput-object p1, v0, Lorg/json2/XMLParserConfiguration;->cDataTagName:Ljava/lang/String;

    return-object v0
.end method
