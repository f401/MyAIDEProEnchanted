.class public Lorg/apache/tools/ant/taskdefs/GenerateKey;
.super Lorg/apache/tools/ant/Task;
.source "GenerateKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName;,
        Lorg/apache/tools/ant/taskdefs/GenerateKey$DnameParam;
    }
.end annotation


# instance fields
.field protected alias:Ljava/lang/String;

.field protected dname:Ljava/lang/String;

.field protected expandedDname:Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName;

.field protected keyalg:Ljava/lang/String;

.field protected keypass:Ljava/lang/String;

.field protected keysize:I

.field protected keystore:Ljava/lang/String;

.field protected saname:Ljava/lang/String;

.field protected sigalg:Ljava/lang/String;

.field protected storepass:Ljava/lang/String;

.field protected storetype:Ljava/lang/String;

.field protected validity:I

.field protected verbose:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public createDname()Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->expandedDname:Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName;

    if-nez v0, :cond_18

    .line 170
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->dname:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 174
    new-instance v0, Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->expandedDname:Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName;

    .line 175
    return-object v0

    .line 171
    :cond_10
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "It is not possible to specify dname  both as attribute and element."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_18
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "DName sub-element can only be specified once."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->alias:Ljava/lang/String;

    if-eqz v0, :cond_15b

    .line 311
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->storepass:Ljava/lang/String;

    if-eqz v0, :cond_153

    .line 315
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->dname:Ljava/lang/String;

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->expandedDname:Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName;

    if-eqz v0, :cond_144

    .line 319
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    const-string v1, "-genkey "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->verbose:Z

    if-eqz v1, :cond_23

    .line 324
    const-string v1, "-v "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    :cond_23
    const-string v1, "-alias \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->dname:Ljava/lang/String;

    if-eqz v1, :cond_45

    .line 332
    const-string v1, "-dname \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->dname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    :cond_45
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->expandedDname:Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName;

    if-eqz v1, :cond_58

    .line 338
    const-string v1, "-dname \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->expandedDname:Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 340
    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    :cond_58
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->keystore:Ljava/lang/String;

    if-eqz v1, :cond_6b

    .line 344
    const-string v1, "-keystore \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->keystore:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    :cond_6b
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->storepass:Ljava/lang/String;

    if-eqz v1, :cond_7e

    .line 350
    const-string v1, "-storepass \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->storepass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_7e
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->storetype:Ljava/lang/String;

    if-eqz v1, :cond_91

    .line 356
    const-string v1, "-storetype \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->storetype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    :cond_91
    const-string v1, "-keypass \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->keypass:Ljava/lang/String;

    if-eqz v1, :cond_14c

    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    :goto_9d
    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->sigalg:Ljava/lang/String;

    if-eqz v1, :cond_b5

    .line 370
    const-string v1, "-sigalg \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->sigalg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    :cond_b5
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->keyalg:Ljava/lang/String;

    if-eqz v1, :cond_c8

    .line 376
    const-string v1, "-keyalg \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->keyalg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_c8
    iget v1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->keysize:I

    if-lez v1, :cond_db

    .line 382
    const-string v1, "-keysize \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    iget v1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->keysize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 384
    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_db
    iget v1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->validity:I

    if-lez v1, :cond_ee

    .line 388
    const-string v1, "-validity \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    iget v1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->validity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 390
    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_ee
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->saname:Ljava/lang/String;

    if-eqz v1, :cond_106

    .line 394
    const-string v1, "-ext "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    const-string v1, "\"san="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->saname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    :cond_106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generating Key for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->alias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/GenerateKey;->log(Ljava/lang/String;)V

    .line 401
    new-instance v1, Lorg/apache/tools/ant/taskdefs/ExecTask;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;-><init>(Lorg/apache/tools/ant/Task;)V

    .line 402
    const-string v2, "keytool"

    invoke-static {v2}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJdkExecutable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/ExecTask;->setExecutable(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    .line 404
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    .line 405
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->setFailonerror(Z)V

    .line 406
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/GenerateKey;->getTaskName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->setTaskName(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->execute()V

    .line 408
    return-void

    .line 316
    :cond_144
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "dname must be set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_14c
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->storepass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9d

    .line 312
    :cond_153
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "storepass attribute must be set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_15b
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "alias attribute must be set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .registers 2

    .line 207
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->alias:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setDname(Ljava/lang/String;)V
    .registers 4

    .line 184
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->expandedDname:Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName;

    if-nez v0, :cond_7

    .line 188
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->dname:Ljava/lang/String;

    .line 189
    return-void

    .line 185
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "It is not possible to specify dname  both as attribute and element."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setKeyalg(Ljava/lang/String;)V
    .registers 2

    .line 260
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->keyalg:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public setKeypass(Ljava/lang/String;)V
    .registers 2

    .line 243
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->keypass:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setKeysize(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 272
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->keysize:I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_6} :catch_7

    .line 275
    return-void

    .line 273
    :catch_7
    move-exception v0

    .line 274
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "KeySize attribute should be a integer"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setKeystore(Ljava/lang/String;)V
    .registers 2

    .line 216
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->keystore:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setSaname(Ljava/lang/String;)V
    .registers 2

    .line 198
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->saname:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setSigalg(Ljava/lang/String;)V
    .registers 2

    .line 252
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->sigalg:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public setStorepass(Ljava/lang/String;)V
    .registers 2

    .line 225
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->storepass:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setStoretype(Ljava/lang/String;)V
    .registers 2

    .line 234
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->storetype:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setValidity(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 286
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->validity:I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_6} :catch_7

    .line 289
    return-void

    .line 287
    :catch_7
    move-exception v0

    .line 288
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Validity attribute should be a integer"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVerbose(Z)V
    .registers 2

    .line 297
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->verbose:Z

    .line 298
    return-void
.end method
