.class public Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "Native2Ascii.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii$ExtMapper;
    }
.end annotation


# instance fields
.field private destDir:Ljava/io/File;

.field private encoding:Ljava/lang/String;

.field private extension:Ljava/lang/String;

.field private facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

.field private mapper:Lorg/apache/tools/ant/types/Mapper;

.field private nestedAdapter:Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapter;

.field private reverse:Z

.field private srcDir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->reverse:Z

    .line 45
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->encoding:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->srcDir:Ljava/io/File;

    .line 47
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->destDir:Ljava/io/File;

    .line 48
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->extension:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    .line 52
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->nestedAdapter:Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapter;

    .line 56
    new-instance v0, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-static {}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapterFactory;->getDefault()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    .line 57
    return-void
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;)Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->extension:Ljava/lang/String;

    return-object v0
.end method

.method private convert(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 278
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->srcDir:Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 279
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->destDir:Ljava/io/File;

    invoke-direct {v2, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    .line 288
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 289
    if-eqz v0, :cond_33

    .line 290
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_33

    .line 293
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_33

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 299
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "converting "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->log(Ljava/lang/String;I)V

    .line 300
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->nestedAdapter:Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapter;

    if-eqz v0, :cond_5f

    .line 303
    :goto_4c
    invoke-interface {v0, p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapter;->convert(Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 306
    return-void

    .line 294
    :cond_53
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "cannot create parent directory %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 301
    :cond_5f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->getImplementation()Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->createImplementationClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v3

    .line 301
    invoke-static {v0, p0, v3}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapterFactory;->getAdapter(Ljava/lang/String;Lorg/apache/tools/ant/ProjectComponent;Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapter;

    move-result-object v0

    goto :goto_4c

    .line 304
    :cond_6e
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "conversion failed"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_76
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "file %s would overwrite itself"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapter;)V
    .registers 4

    .line 200
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->nestedAdapter:Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapter;

    if-nez v0, :cond_7

    .line 204
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->nestedAdapter:Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapter;

    .line 205
    return-void

    .line 201
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Can\'t have more than one native2ascii adapter"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .registers 3

    .line 166
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->createMapper()Lorg/apache/tools/ant/types/Mapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Mapper;->add(Lorg/apache/tools/ant/util/FileNameMapper;)V

    .line 167
    return-void
.end method

.method public createArg()Lorg/apache/tools/ant/util/facade/ImplementationSpecificArgument;
    .registers 3

    .line 176
    new-instance v0, Lorg/apache/tools/ant/util/facade/ImplementationSpecificArgument;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/facade/ImplementationSpecificArgument;-><init>()V

    .line 178
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->addImplementationArgument(Lorg/apache/tools/ant/util/facade/ImplementationSpecificArgument;)V

    .line 179
    return-object v0
.end method

.method public createImplementationClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 190
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->getImplementationClasspath(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createMapper()Lorg/apache/tools/ant/types/Mapper;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->mapper:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_10

    .line 155
    new-instance v0, Lorg/apache/tools/ant/types/Mapper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Mapper;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->mapper:Lorg/apache/tools/ant/types/Mapper;

    .line 156
    return-object v0

    .line 152
    :cond_10
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot define more than one mapper"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public execute()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v2, 0x0

    .line 215
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->srcDir:Ljava/io/File;

    if-nez v0, :cond_11

    .line 220
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->srcDir:Ljava/io/File;

    .line 224
    :cond_11
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->destDir:Ljava/io/File;

    if-eqz v0, :cond_bc

    .line 231
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->srcDir:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->extension:Ljava/lang/String;

    if-nez v0, :cond_25

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->mapper:Lorg/apache/tools/ant/types/Mapper;

    if-eqz v0, :cond_4d

    .line 237
    :cond_25
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->mapper:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_5c

    .line 238
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->extension:Ljava/lang/String;

    if-nez v0, :cond_55

    .line 239
    new-instance v0, Lorg/apache/tools/ant/util/IdentityMapper;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/IdentityMapper;-><init>()V

    .line 247
    :goto_32
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->srcDir:Ljava/io/File;

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->getDirectoryScanner(Ljava/io/File;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v1

    .line 248
    invoke-virtual {v1}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v1

    .line 249
    new-instance v3, Lorg/apache/tools/ant/util/SourceFileScanner;

    invoke-direct {v3, p0}, Lorg/apache/tools/ant/util/SourceFileScanner;-><init>(Lorg/apache/tools/ant/Task;)V

    .line 250
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->srcDir:Ljava/io/File;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->destDir:Ljava/io/File;

    invoke-virtual {v3, v1, v4, v5, v0}, Lorg/apache/tools/ant/util/SourceFileScanner;->restrict([Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/util/FileNameMapper;)[Ljava/lang/String;

    move-result-object v3

    .line 251
    array-length v1, v3

    .line 252
    if-nez v1, :cond_61

    .line 264
    :cond_4c
    return-void

    .line 232
    :cond_4d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The ext attribute or a mapper must be set if src and dest dirs are the same."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_55
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii$ExtMapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii$ExtMapper;-><init>(Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii$1;)V

    goto :goto_32

    .line 244
    :cond_5c
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v0

    goto :goto_32

    .line 255
    :cond_61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Converting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " file"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    const/4 v5, 0x1

    if-eq v1, v5, :cond_b9

    const-string v1, "s"

    :goto_78
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 257
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->srcDir:Ljava/io/File;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->destDir:Ljava/io/File;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->log(Ljava/lang/String;)V

    .line 258
    array-length v4, v3

    move v1, v2

    :goto_a4
    if-ge v1, v4, :cond_4c

    aget-object v5, v3, v1

    .line 259
    invoke-interface {v0, v5}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 260
    if-eqz v6, :cond_b6

    array-length v7, v6

    if-lez v7, :cond_b6

    .line 261
    aget-object v6, v6, v2

    invoke-direct {p0, v5, v6}, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->convert(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_b6
    add-int/lit8 v1, v1, 0x1

    goto :goto_a4

    .line 256
    :cond_b9
    const-string v1, ""

    goto :goto_78

    .line 225
    :cond_bc
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The dest attribute must be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCurrentArgs()[Ljava/lang/String;
    .registers 2

    .line 315
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->getArgs()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getReverse()Z
    .registers 2

    .line 77
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->reverse:Z

    return v0
.end method

.method public setDest(Ljava/io/File;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->destDir:Ljava/io/File;

    .line 118
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->encoding:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->extension:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setImplementation(Ljava/lang/String;)V
    .registers 4

    .line 137
    const-string v0, "default"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 138
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-static {}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapterFactory;->getDefault()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->setImplementation(Ljava/lang/String;)V

    .line 142
    :goto_11
    return-void

    .line 140
    :cond_12
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->setImplementation(Ljava/lang/String;)V

    goto :goto_11
.end method

.method public setReverse(Z)V
    .registers 2

    .line 67
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->reverse:Z

    .line 68
    return-void
.end method

.method public setSrc(Ljava/io/File;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->srcDir:Ljava/io/File;

    .line 108
    return-void
.end method
