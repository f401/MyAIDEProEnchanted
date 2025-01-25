.class public Lorg/apache/tools/ant/taskdefs/Concat;
.super Lorg/apache/tools/ant/Task;
.source "Concat.java"

# interfaces
.implements Lorg/apache/tools/ant/types/ResourceCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;,
        Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;,
        Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;,
        Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;,
        Lorg/apache/tools/ant/taskdefs/Concat$TextElement;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final EXISTS:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final NOT_EXISTS:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# instance fields
.field private append:Z

.field private binary:Z

.field private dest:Lorg/apache/tools/ant/types/Resource;

.field private encoding:Ljava/lang/String;

.field private eolString:Ljava/lang/String;

.field private filterBeforeConcat:Z

.field private filterChains:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;"
        }
    .end annotation
.end field

.field private fixLastLine:Z

.field private footer:Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

.field private force:Z

.field private forceOverwrite:Z

.field private header:Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

.field private identityReaderFactory:Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory",
            "<",
            "Ljava/io/Reader;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreEmpty:Z

.field private outputEncoding:Ljava/lang/String;

.field private outputWriter:Ljava/io/Writer;

.field private rc:Lorg/apache/tools/ant/types/resources/Resources;

.field private resourceName:Ljava/lang/String;

.field private resourceReaderFactory:Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation
.end field

.field private textBuffer:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 83
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Concat;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 85
    new-instance v0, Lorg/apache/tools/ant/types/resources/selectors/Exists;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/selectors/Exists;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Concat;->EXISTS:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    .line 86
    new-instance v1, Lorg/apache/tools/ant/types/resources/selectors/Not;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/types/resources/selectors/Not;-><init>(Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V

    sput-object v1, Lorg/apache/tools/ant/taskdefs/Concat;->NOT_EXISTS:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 590
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 556
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->forceOverwrite:Z

    .line 558
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->force:Z

    .line 564
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->fixLastLine:Z

    .line 568
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->outputWriter:Ljava/io/Writer;

    .line 571
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->ignoreEmpty:Z

    .line 575
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Concat$1;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Concat$1;-><init>(Lorg/apache/tools/ant/taskdefs/Concat;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->resourceReaderFactory:Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;

    .line 585
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Concat$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Concat$$ExternalSyntheticLambda1;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->identityReaderFactory:Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;

    .line 591
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Concat;->reset()V

    .line 592
    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->eolString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/tools/ant/taskdefs/Concat;)Lorg/apache/tools/ant/taskdefs/Concat$TextElement;
    .registers 2

    .line 78
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->footer:Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/tools/ant/taskdefs/Concat;)Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;
    .registers 2

    .line 78
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->identityReaderFactory:Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->outputEncoding:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->resourceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/tools/ant/taskdefs/Concat;Ljava/io/Reader;)Ljava/io/Reader;
    .registers 3

    .line 78
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Concat;->getFilteredReader(Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/tools/ant/taskdefs/Concat;)Z
    .registers 2

    .line 78
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->fixLastLine:Z

    return v0
.end method

.method static synthetic access$400(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/StringBuffer;
    .registers 2

    .line 78
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->textBuffer:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/tools/ant/taskdefs/Concat;)Z
    .registers 2

    .line 78
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->binary:Z

    return v0
.end method

.method static synthetic access$600(Lorg/apache/tools/ant/taskdefs/Concat;)Z
    .registers 2

    .line 78
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->filterBeforeConcat:Z

    return v0
.end method

.method static synthetic access$700(Lorg/apache/tools/ant/taskdefs/Concat;)Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;
    .registers 2

    .line 78
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->resourceReaderFactory:Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/tools/ant/taskdefs/Concat;)Lorg/apache/tools/ant/taskdefs/Concat$TextElement;
    .registers 2

    .line 78
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->header:Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    return-object v0
.end method

.method private getFilteredReader(Ljava/io/Reader;)Ljava/io/Reader;
    .registers 4

    .line 1033
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->filterChains:Ljava/util/Vector;

    if-nez v0, :cond_5

    .line 1042
    :goto_4
    return-object p1

    .line 1036
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;

    invoke-direct {v0}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;-><init>()V

    .line 1037
    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setBufferSize(I)V

    .line 1038
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setPrimaryReader(Ljava/io/Reader;)V

    .line 1039
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->filterChains:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setFilterChains(Ljava/util/Vector;)V

    .line 1040
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Concat;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 1042
    invoke-virtual {v0}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->getAssembledReader()Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;

    move-result-object p1

    goto :goto_4
.end method

.method private getResources()Lorg/apache/tools/ant/types/ResourceCollection;
    .registers 6

    const/4 v4, 0x0

    .line 989
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->rc:Lorg/apache/tools/ant/types/resources/Resources;

    if-nez v0, :cond_15

    .line 990
    new-instance v0, Lorg/apache/tools/ant/types/resources/StringResource;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Concat;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Concat;->textBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/types/resources/StringResource;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    .line 1012
    :goto_14
    return-object v0

    .line 992
    :cond_15
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->dest:Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_35

    .line 993
    new-instance v0, Lorg/apache/tools/ant/types/resources/Intersect;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Intersect;-><init>()V

    .line 994
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Concat;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/Intersect;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 995
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->rc:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/Intersect;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 996
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->dest:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/Intersect;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 997
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Intersect;->size()I

    move-result v0

    if-gtz v0, :cond_69

    .line 1003
    :cond_35
    new-instance v0, Lorg/apache/tools/ant/types/resources/Restrict;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Restrict;-><init>()V

    .line 1004
    sget-object v1, Lorg/apache/tools/ant/taskdefs/Concat;->NOT_EXISTS:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/Restrict;->add(Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V

    .line 1005
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->rc:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/Restrict;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 1006
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Restrict;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 1007
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not exist."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/Concat;->log(Ljava/lang/String;I)V

    goto :goto_48

    .line 998
    :cond_69
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Destination resource %s was specified as an input resource."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Concat;->dest:Lorg/apache/tools/ant/types/Resource;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1009
    :cond_78
    new-instance v0, Lorg/apache/tools/ant/types/resources/Restrict;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Restrict;-><init>()V

    .line 1010
    sget-object v1, Lorg/apache/tools/ant/taskdefs/Concat;->EXISTS:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/Restrict;->add(Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V

    .line 1011
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->rc:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/Restrict;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    goto :goto_14
.end method

.method private isUpToDate(Lorg/apache/tools/ant/types/ResourceCollection;)Z
    .registers 4

    .line 1016
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->dest:Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->forceOverwrite:Z

    if-nez v0, :cond_19

    .line 1017
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/Concat$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/Concat$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/Concat;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    .line 1016
    :goto_18
    return v0

    .line 1017
    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method static synthetic lambda$new$0(Ljava/io/Reader;)Ljava/io/Reader;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 585
    return-object p0
.end method

.method private sanitizeText()V
    .registers 2

    .line 1027
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->textBuffer:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1028
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->textBuffer:Ljava/lang/StringBuffer;

    .line 1030
    :cond_15
    return-void
.end method

.method private validate()V
    .registers 3

    .line 942
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Concat;->sanitizeText()V

    .line 945
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->binary:Z

    if-eqz v0, :cond_23

    .line 946
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->textBuffer:Ljava/lang/StringBuffer;

    if-nez v0, :cond_5a

    .line 950
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->encoding:Ljava/lang/String;

    if-nez v0, :cond_52

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->outputEncoding:Ljava/lang/String;

    if-nez v0, :cond_52

    .line 954
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->filterChains:Ljava/util/Vector;

    if-nez v0, :cond_4a

    .line 958
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->fixLastLine:Z

    if-nez v0, :cond_42

    .line 962
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->header:Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    if-nez v0, :cond_3a

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->footer:Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    if-nez v0, :cond_3a

    .line 967
    :cond_23
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->dest:Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->outputWriter:Ljava/io/Writer;

    if-nez v0, :cond_62

    .line 972
    :cond_2b
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->rc:Lorg/apache/tools/ant/types/resources/Resources;

    if-nez v0, :cond_33

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->textBuffer:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_6a

    .line 977
    :cond_33
    if-eqz v0, :cond_39

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->textBuffer:Ljava/lang/StringBuffer;

    if-nez v0, :cond_72

    .line 983
    :cond_39
    return-void

    .line 963
    :cond_3a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Nested header or footer is incompatible with binary concatenation"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 959
    :cond_42
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Setting fixlastline is incompatible with binary concatenation"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 955
    :cond_4a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Setting filters is incompatible with binary concatenation"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 951
    :cond_52
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Setting input or output encoding is incompatible with binary concatenation"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 947
    :cond_5a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Nested text is incompatible with binary concatenation"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 968
    :cond_62
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot specify both a destination resource and an output writer"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 974
    :cond_6a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "At least one resource must be provided, or some text."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 980
    :cond_72
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot include inline text when using resources."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 4

    .line 758
    monitor-enter p0

    .line 759
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->rc:Lorg/apache/tools/ant/types/resources/Resources;

    if-nez v0, :cond_19

    .line 760
    new-instance v0, Lorg/apache/tools/ant/types/resources/Resources;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Resources;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->rc:Lorg/apache/tools/ant/types/resources/Resources;

    .line 761
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Concat;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/Resources;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 762
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->rc:Lorg/apache/tools/ant/types/resources/Resources;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/Resources;->setCache(Z)V

    .line 764
    :cond_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_20

    .line 765
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->rc:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Resources;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 766
    return-void

    .line 764
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public addFilelist(Lorg/apache/tools/ant/types/FileList;)V
    .registers 2

    .line 749
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Concat;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 750
    return-void
.end method

.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .registers 2

    .line 741
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Concat;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 742
    return-void
.end method

.method public addFilterChain(Lorg/apache/tools/ant/types/FilterChain;)V
    .registers 3

    .line 774
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->filterChains:Ljava/util/Vector;

    if-nez v0, :cond_b

    .line 775
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->filterChains:Ljava/util/Vector;

    .line 777
    :cond_b
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->filterChains:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 778
    return-void
.end method

.method public addFooter(Lorg/apache/tools/ant/taskdefs/Concat$TextElement;)V
    .registers 2

    .line 811
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->footer:Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    .line 812
    return-void
.end method

.method public addHeader(Lorg/apache/tools/ant/taskdefs/Concat$TextElement;)V
    .registers 2

    .line 802
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->header:Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    .line 803
    return-void
.end method

.method public addText(Ljava/lang/String;)V
    .registers 4

    .line 785
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->textBuffer:Ljava/lang/StringBuffer;

    if-nez v0, :cond_f

    .line 788
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->textBuffer:Ljava/lang/StringBuffer;

    .line 793
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->textBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 794
    return-void
.end method

.method public createPath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 731
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Concat;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 732
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Concat;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 733
    return-object v0
.end method

.method public execute()V
    .registers 12

    .line 881
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Concat;->validate()V

    .line 882
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->binary:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->dest:Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_2d

    .line 886
    :cond_b
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Concat;->getResources()Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v1

    .line 887
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/Concat;->isUpToDate(Lorg/apache/tools/ant/types/ResourceCollection;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->dest:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is up-to-date."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Concat;->log(Ljava/lang/String;I)V

    .line 903
    :cond_2c
    :goto_2c
    return-void

    .line 883
    :cond_2d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "dest|destfile attribute is required for binary concatenation"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 891
    :cond_35
    invoke-interface {v1}, Lorg/apache/tools/ant/types/ResourceCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->ignoreEmpty:Z

    if-nez v0, :cond_2c

    .line 896
    :cond_3f
    :try_start_3f
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;-><init>(Lorg/apache/tools/ant/taskdefs/Concat;Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/ant/taskdefs/Concat$1;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->dest:Lorg/apache/tools/ant/types/Resource;

    if-nez v1, :cond_4f

    .line 897
    new-instance v1, Lorg/apache/tools/ant/types/resources/LogOutputResource;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lorg/apache/tools/ant/types/resources/LogOutputResource;-><init>(Lorg/apache/tools/ant/ProjectComponent;I)V

    .line 898
    :cond_4f
    iget-boolean v6, p0, Lorg/apache/tools/ant/taskdefs/Concat;->append:Z

    .line 900
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Concat;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v9

    iget-boolean v10, p0, Lorg/apache/tools/ant/taskdefs/Concat;->force:Z

    .line 896
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v10}, Lorg/apache/tools/ant/util/ResourceUtils;->copyResource(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/FilterSetCollection;Ljava/util/Vector;ZZZLjava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;Z)V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_60} :catch_61

    goto :goto_2c

    .line 901
    :catch_61
    move-exception v0

    .line 902
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error concatenating content to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Concat;->dest:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public synthetic isEmpty()Z
    .registers 2

    invoke-static {p0}, Lorg/apache/tools/ant/types/ResourceCollection$_CC;->$default$isEmpty(Lorg/apache/tools/ant/types/ResourceCollection;)Z

    move-result v0

    return v0
.end method

.method public isFilesystemOnly()Z
    .registers 2

    .line 933
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    .line 912
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Concat;->validate()V

    .line 913
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Concat;->getResources()Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;-><init>(Lorg/apache/tools/ant/taskdefs/Concat;Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/ant/taskdefs/Concat$1;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 915
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 913
    return-object v0
.end method

.method public synthetic lambda$isUpToDate$1$Concat(Lorg/apache/tools/ant/types/Resource;)Z
    .registers 6

    .line 1017
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->dest:Lorg/apache/tools/ant/types/Resource;

    sget-object v1, Lorg/apache/tools/ant/taskdefs/Concat;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v1}, Lorg/apache/tools/ant/util/FileUtils;->getFileTimestampGranularity()J

    move-result-wide v2

    invoke-static {p1, v0, v2, v3}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->isOutOfDate(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;J)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 598
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Concat;->append:Z

    .line 599
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Concat;->forceOverwrite:Z

    .line 600
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->dest:Lorg/apache/tools/ant/types/Resource;

    .line 601
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->encoding:Ljava/lang/String;

    .line 602
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->outputEncoding:Ljava/lang/String;

    .line 603
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Concat;->fixLastLine:Z

    .line 604
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->filterChains:Ljava/util/Vector;

    .line 605
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->footer:Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    .line 606
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->header:Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    .line 607
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Concat;->binary:Z

    .line 608
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->outputWriter:Ljava/io/Writer;

    .line 609
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->textBuffer:Ljava/lang/StringBuffer;

    .line 610
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->eolString:Ljava/lang/String;

    .line 611
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->rc:Lorg/apache/tools/ant/types/resources/Resources;

    .line 612
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Concat;->ignoreEmpty:Z

    .line 613
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Concat;->force:Z

    .line 614
    return-void
.end method

.method public setAppend(Z)V
    .registers 2

    .line 643
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->append:Z

    .line 644
    return-void
.end method

.method public setBinary(Z)V
    .registers 2

    .line 862
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->binary:Z

    .line 863
    return-void
.end method

.method public setDest(Lorg/apache/tools/ant/types/Resource;)V
    .registers 2

    .line 632
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->dest:Lorg/apache/tools/ant/types/Resource;

    .line 633
    return-void
.end method

.method public setDestfile(Ljava/io/File;)V
    .registers 3

    .line 623
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Concat;->setDest(Lorg/apache/tools/ant/types/Resource;)V

    .line 624
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 3

    .line 652
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->encoding:Ljava/lang/String;

    .line 653
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->outputEncoding:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 654
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->outputEncoding:Ljava/lang/String;

    .line 656
    :cond_8
    return-void
.end method

.method public setEol(Lorg/apache/tools/ant/taskdefs/FixCRLF$CrLf;)V
    .registers 4

    .line 834
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/FixCRLF$CrLf;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 835
    const-string v1, "cr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "mac"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 836
    :cond_14
    const-string v0, "\r"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->eolString:Ljava/lang/String;

    .line 842
    :cond_18
    :goto_18
    return-void

    .line 837
    :cond_19
    const-string v1, "lf"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    const-string v1, "unix"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 838
    :cond_29
    const-string v0, "\n"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->eolString:Ljava/lang/String;

    goto :goto_18

    .line 839
    :cond_2e
    const-string v1, "crlf"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    const-string v1, "dos"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 840
    :cond_3e
    const-string v0, "\r\n"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->eolString:Ljava/lang/String;

    goto :goto_18
.end method

.method public setFilterBeforeConcat(Z)V
    .registers 2

    .line 873
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->filterBeforeConcat:Z

    .line 874
    return-void
.end method

.method public setFixLastLine(Z)V
    .registers 2

    .line 822
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->fixLastLine:Z

    .line 823
    return-void
.end method

.method public setForce(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 677
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->forceOverwrite:Z

    .line 678
    return-void
.end method

.method public setForceReadOnly(Z)V
    .registers 2

    .line 700
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->force:Z

    .line 701
    return-void
.end method

.method public setIgnoreEmpty(Z)V
    .registers 2

    .line 711
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->ignoreEmpty:Z

    .line 712
    return-void
.end method

.method public setOutputEncoding(Ljava/lang/String;)V
    .registers 2

    .line 664
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->outputEncoding:Ljava/lang/String;

    .line 665
    return-void
.end method

.method public setOverwrite(Z)V
    .registers 2

    .line 688
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Concat;->setForce(Z)V

    .line 689
    return-void
.end method

.method public setResourceName(Ljava/lang/String;)V
    .registers 2

    .line 720
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->resourceName:Ljava/lang/String;

    .line 721
    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .registers 2

    .line 851
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->outputWriter:Ljava/io/Writer;

    .line 852
    return-void
.end method

.method public size()I
    .registers 2

    .line 924
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic stream()Ljava/util/stream/Stream;
    .registers 2

    invoke-static {p0}, Lorg/apache/tools/ant/types/ResourceCollection$_CC;->$default$stream(Lorg/apache/tools/ant/types/ResourceCollection;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
